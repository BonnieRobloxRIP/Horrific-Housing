import { world } from "@minecraft/server";

// Helper to ensure a dynamic property exists and return its value
// This is effectively `getOrCreateProperty`
function ensureProperty(player, key, defaultValue = 0) {
    if (typeof player !== 'object' || player === null) {
        console.warn(`[DynamicPropertyUtils] Warning: 'player' is not a valid object for key '${key}'. Falling back to default.`);
        return defaultValue;
    }
    if (typeof player.getDynamicProperty !== 'function') {
        console.warn(`[DynamicPropertyUtils] Warning: 'player.getDynamicProperty' is not a function on the player object for key '${key}'. Falling back to default.`);
        return defaultValue;
    }

    let value;
    try {
        value = player.getDynamicProperty(key); // Line 6
    } catch (e) {
        console.error(`[DynamicPropertyUtils] Error getting dynamic property '${key}': ${e}. Falling back to default.`);
        return defaultValue;
    }

    if (value === undefined || value === null) {
        // Only set if it's truly missing
        try {
            player.setDynamicProperty(key, defaultValue);
            return defaultValue;
        } catch (e) {
            console.error(`[DynamicPropertyUtils] Error setting dynamic property '${key}' to default: ${e}. Falling back to default.`);
            return defaultValue;
        }
    }
    return value;
}

/**
 * Sets a dynamic property for a player.
 * @param {import("@minecraft/server").Player} player The player to set the property for.
 * @param {string} key The key of the dynamic property.
 * @param {any} value The value to set.
 */
export function setPlayerProperty(player, key, value) {
    if (typeof player !== 'object' || player === null) {
        console.warn(`[DynamicPropertyUtils] Warning: 'player' is not a valid object for setting key '${key}'. Skipping set.`);
        return;
    }
    if (typeof player.setDynamicProperty !== 'function') {
        console.warn(`[DynamicPropertyUtils] Warning: 'player.setDynamicProperty' is not a function for setting key '${key}'. Skipping set.`);
        return;
    }
    player.setDynamicProperty(key, value);
}

/**
 * Gets a dynamic property for a player, creating it with a default value if it doesn't exist.
 * @param {import("@minecraft/server").Player} player The player to get the property from.
 * @param {string} key The key of the dynamic property.
 * @param {any} defaultValue The default value if the property does not exist.
 * @returns {any} The value of the dynamic property.
 */
export function getPlayerProperty(player, key, defaultValue = 0) {
    return ensureProperty(player, key, defaultValue);
}

/**
 * Removes a dynamic property from a player.
 * @param {import("@minecraft/server").Player} player The player to remove the property from.
 * @param {string} key The key of the dynamic property to remove.
 */
export function removePlayerProperty(player, key) {
    if (typeof player !== 'object' || player === null) {
        console.warn(`[DynamicPropertyUtils] Warning: 'player' is not a valid object for removing key '${key}'. Skipping remove.`);
        return;
    }
    if (typeof player.setDynamicProperty !== 'function') { // setDynamicProperty is used for removal too
        console.warn(`[DynamicPropertyUtils] Warning: 'player.setDynamicProperty' is not a function for removing key '${key}'. Skipping remove.`);
        return;
    }
    // Setting to undefined effectively removes the property
    player.setDynamicProperty(key, undefined);
}
