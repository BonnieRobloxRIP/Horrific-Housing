import * as mc from "@minecraft/server";

export const lifeLink = {
    Code: {
        execute: () => {
            mc.system.afterEvents.scriptEventReceive.subscribe((event) => {
                if (event.id !== "lifelink:start") return; // You can change the /scriptevent name here
                let players = mc.world.getPlayers().filter(p =>
                    getScore(p, "life_link") === 0 &&
                    p.hasTag("game") // Only select active players
                );

                if (players.length < 2) {
                    return; // Does nothing if only one player is in the game
                }

                // Pick two random players
                let [p1, p2] = getRandomPlayers(players, 2);

                let score1 = getScore(p1, "life_link"); // Checks the scores of both selected players
                let score2 = getScore(p2, "life_link");

                if (score1 === 0 && score2 === 0) {
                    // If both players have the score 0, assign a new life link score
                    let newScore = getNextScore();
                    setScore(p1, "life_link", newScore);
                    setScore(p2, "life_link", newScore);
                } else if (score1 !== 0 && score2 === 0) {
                    // If p1 is linked, p2 joins the same group
                    setScore(p2, "life_link", score1);
                } else if (score1 === 0 && score2 !== 0) {
                    // If p2 is linked, p1 joins the same group
                    setScore(p1, "life_link", score2);
                } else {
                    // If both have different links merge the life link group
                    let minScore = Math.min(score1, score2);
                    setScoreForGroup(score1, minScore);
                    setScoreForGroup(score2, minScore);
                }

                notifyLinkedPlayers();

                // Function to get a player's score from the scoreboard
                function getScore(player, objective) {
                    let scoreboard = mc.world.scoreboard; // Access the world's scoreboard system
                    let obj = scoreboard.getObjective(objective); // Get the specified objective (in this case, life_link)
                    return obj?.getScore(player) ?? 0; // Return the player's score or 0 if the objective doesn't exist
                }

                // Function to set a player's score on the scoreboard
                function setScore(player, objective, value) {
                    let scoreboard = mc.world.scoreboard; // Access the scoreboard
                    let obj = scoreboard.getObjective(objective) ?? scoreboard.addObjective(objective);
                    // If the objective doesn't exist, create it
                    obj.setScore(player, value); // Set the player's score for the given objective
                }

                // Function to change all players with a specific score to a new score
                function setScoreForGroup(oldScore, newScore) {
                    for (let player of mc.world.getPlayers()) { // Loop through all players
                        if (getScore(player, "life_link") === oldScore) {
                            // If the player has the old score, update it
                            setScore(player, "life_link", newScore);
                        }
                    }
                }

                // Function to determine the next available score for linking players
                function getNextScore() {
                    let scores = mc.world.getPlayers() // Get all players
                        .map(p => getScore(p, "life_link")) // Map to their life_link scores
                        .filter(s => s > 0); // Keep only positive scores (ignore unlinked players)

                    return scores.length > 0 ? Math.max(...scores) + 1 : 1;
                    // If there are existing scores, return the next available number, otherwise return 1
                }

                // Function to randomly select a certain number of players from a list
                function getRandomPlayers(list, count) {
                    list.sort(() => Math.random() - 0.5); // Shuffle the list randomly
                    return list.slice(0, count); // Return the first 'count' players from the shuffled list
                }

                // Function to notify players who they are linked with
                function notifyLinkedPlayers() {
                    let linkedGroups = new Map(); // Create a map to store groups of linked players

                    for (let player of mc.world.getPlayers()) { // Loop through all players
                        let score = getScore(player, "life_link"); // Get the player's life_link score
                        if (score > 0) { // Only consider players who are linked (score > 0)
                            if (!linkedGroups.has(score)) linkedGroups.set(score, []);
                            // If the score group doesn't exist in the map, create an empty list for it
                            linkedGroups.get(score).push(player.name);
                            // Add the player's name to the corresponding linked group
                        }
                    }

                    // Loop through each linked group and send messages to the linked players
                    for (let [score, names] of linkedGroups.entries()) {
                        let message = `§3You are now linked with:§b§l ${names.join(", ")}`; // Makes the message
                        // Create a message listing all linked players in the group

                        for (let player of mc.world.getPlayers()) { // Loop through all players again
                            if (getScore(player, "life_link") === score) {
                                // If the player belongs to this group, send them the message
                                player.sendMessage(message);
                            }
                        }
                    }
                }
            })
        }
    }
};
