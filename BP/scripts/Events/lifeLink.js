import * as mc from "@minecraft/server";

export const lifeLink = {
    Code: {
        execute: () => {
            mc.system.afterEvents.scriptEventReceive.subscribe((event) => {
                if (event.id !== "lifelink:start") return; // You can change the /scriptevent name here

                // Get all players with the 'game' tag, regardless of their current link status
                let activePlayers = mc.world.getPlayers().filter(p => p.hasTag("game"));

                if (activePlayers.length < 2) {
                    // Not enough active players to form a link
                    return;
                }

                // Always pick two random players from the active players
                let [p1, p2] = getRandomPlayers(activePlayers, 2);

                let score1 = getScore(p1, "life_link"); // Gets the current link score of p1
                let score2 = getScore(p2, "life_link"); // Gets the current link score of p2

                // Scenario 1: Both players are unlinked (score 0)
                if (score1 === 0 && score2 === 0) {
                    let newScore = getNextScore(); // Get a unique ID for the new link group
                    setScore(p1, "life_link", newScore);
                    setScore(p2, "life_link", newScore);
                }
                // Scenario 2: p1 is linked, p2 is unlinked
                else if (score1 !== 0 && score2 === 0) {
                    setScore(p2, "life_link", score1); // p2 joins p1's group
                }
                // Scenario 3: p2 is linked, p1 is unlinked
                else if (score1 === 0 && score2 !== 0) {
                    setScore(p1, "life_link", score2); // p1 joins p2's group
                }
                // Scenario 4: Both players are linked, but in different groups
                else if (score1 !== score2) {
                    let minScore = Math.min(score1, score2); // Choose the smaller score as the new group ID
                    setScoreForGroup(score1, minScore); // Change all players in score1's group to minScore
                    setScoreForGroup(score2, minScore); // Change all players in score2's group to minScore
                }
                // Scenario 5: Both players are already linked in the same group (score1 === score2 and score1 !== 0)

                // Notify all affected players about their current link status
                notifyLinkedPlayers();

                // Function to get a player's score from the scoreboard
                function getScore(player, objective) {
                    let scoreboard = mc.world.scoreboard;
                    let obj = scoreboard.getObjective(objective);
                    return obj?.getScore(player) ?? 0; // Return 0 if no score (unlinked)
                }

                // Function to set a player's score on the scoreboard
                function setScore(player, objective, value) {
                    let scoreboard = mc.world.scoreboard;
                    let obj = scoreboard.getObjective(objective) ?? scoreboard.addObjective(objective);
                    obj.setScore(player, value);
                }

                // Function to change all players with a specific score to a new score (for merging groups)
                function setScoreForGroup(oldScore, newScore) {
                    for (let player of mc.world.getPlayers()) {
                        if (getScore(player, "life_link") === oldScore) {
                            setScore(player, "life_link", newScore);
                        }
                    }
                }

                // Function to determine the next available score for a new link group
                function getNextScore() {
                    let scores = mc.world.getPlayers()
                        .map(p => getScore(p, "life_link"))
                        .filter(s => s > 0); // Consider only active link scores

                    return scores.length > 0 ? Math.max(...scores) + 1 : 1;
                }

                // Function to randomly select a certain number of players from a list
                function getRandomPlayers(list, count) {
                    let shuffledList = [...list]; // Create a shallow copy
                    shuffledList.sort(() => Math.random() - 0.5);
                    return shuffledList.slice(0, count);
                }

                // Function to notify players who they are linked with
                function notifyLinkedPlayers() {
                    let linkedGroups = new Map();

                    for (let player of mc.world.getPlayers()) {
                        let score = getScore(player, "life_link");
                        if (score > 0) { // Only consider players who are linked (score > 0)
                            if (!linkedGroups.has(score)) linkedGroups.set(score, []);
                            linkedGroups.get(score).push(player);
                        }
                    }

                    for (let [score, players] of linkedGroups.entries()) {
                        // Only send messages if there's more than one player in the group
                        if (players.length > 1) {
                            for (let player of players) {
                                let otherNames = players
                                    .filter(p => p.name !== player.name)
                                    .map(p => p.name);

                                let message = `§3You are now linked with:§b§l ${otherNames.join(", ")}§r§3. If one of you dies, the others will too.`;
                                player.sendMessage(message);
                            }
                        }
                    }
                }
            });
        }
    }
};
