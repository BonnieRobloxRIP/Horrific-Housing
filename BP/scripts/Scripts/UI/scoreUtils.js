import { world } from "@minecraft/server";

// Get or create a scoreboard objective
export function getOrCreateObjective(name) {
    let objective = world.scoreboard.getObjective(name);
    if (!objective) {
        objective = world.scoreboard.addObjective(name, name);
    }
    return objective;
}

// Set a player's score on an objective
export function setScore(player, objectiveName, value) {
    const objective = getOrCreateObjective(objectiveName);
    objective.setScore(player, value);
}

// Get a player's score from an objective, safely
export function getScore(player, objectiveName) {
    const objective = world.scoreboard.getObjective(objectiveName);
    if (!objective) return 0;

    try {
        return objective.getScore(player.scoreboardIdentity) ?? 0;
    } catch {
        return 0;
    }
}

// Remove a player's score from an objective
export function removeScore(player, objectiveName) {
    const objective = world.scoreboard.getObjective(objectiveName);
    if (objective) {
        objective.removeParticipant(player);
    }
}
