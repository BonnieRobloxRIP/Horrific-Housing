import { getPlayerProperty } from "./dynamicPropertyUtils.js"; // Correct import source

export const colorCodes = {
    "§0Black§r": "§0",
    "§mRedstone§r": "§m",
    "§4Dark Red§r": "§4",
    "§cRed§r": "§c",
    "§nCopper§r": "§n",
    "§6Orange§r": "§6",
    "§pGold§r": "§p",
    "§gMinecoin Gold§r": "§g",
    "§eYellow§r": "§e",
    "§aGreen§r": "§a",
    "§qEmerald§r": "§q",
    "§2Dark Green§r": "§2",
    "§bAqua§r": "§b",
    "§sDiamond§r": "§s",
    "§3Dark Aqua§r": "§3",
    "§9Blue§r": "§9",
    "§tLapis§r": "§t",
    "§uAmethyst§r": "§u",
    "§5Dark Purple§r": "§5",
    "§dLight Purple§r": "§d",
    "§jNetherite§r": "§j",
    "§8Dark Gray§r": "§8",
    "§7Gray§r": "§7",
    "§iIron§r": "§i",
    "§hQuartz§r": "§h",
    "§fWhite§r": "§f"
};

export const heartOptions = [
    { id: ":heartpulse:", emoji: "", displayName: "HeartPulse" },
    { id: ":red_heart:", emoji: "", displayName: "Red Heart" },
    { id: ":orange_heart:", emoji: "", displayName: "Orange Heart" },
    { id: ":blue_heart:", emoji: "", displayName: "Blue Heart" },
    { id: ":purple_heart:", emoji: "", displayName: "Purple Heart" },
    { id: ":2_hearts:", emoji: "", displayName: "2 Hearts" },
    { id: ":heart_on_fire:", emoji: "", displayName: "Heart on Fire" },
    { id: ":candy_heart:", emoji: "", displayName: "Candy Heart" },
    { id: ":smiling_face_with_3_hearts:", emoji: "", displayName: "Smiling Face with 3 Hearts" },
    { id: ":heart_hands:", emoji: "", displayName: "Heart Hands" }
];

export const tagDisplayMap = {
    "tag_og": "[ §l§2OG§r]",
    "tag_lover": "[ §l§dLover§r]",
    "tag_winner": "[§l§bWinner§r]",
    "tag_bunny": "[§fBunny§r]",
    "tag_cat": "[§fCat§r]",
    "game": "[§l§aGamer§r]",
    "lobby": "[§l§bLobby§r]"
};

export const ownedTagMap = {
    "tag_og1": "[ §l§2OG§r]",
    "tag_lover1": "[ §l§dLover§r]",
    "tag_winner1": "[§l§bWinner§r]",
    "tag_bunny1": "[§fBunny§r]",
    "tag_cat1": "[§fCat§r]"
};

export function getPlayerColor(player) {
    const colorScore = getPlayerProperty(player, "textcolor", 0);
    const colors = Object.values(colorCodes);
    return colors[Math.max(0, Math.min(colors.length - 1, colorScore))] ?? "§f";
}

export function getPlayerStyles(player) {
    const styles = [];
    if (getPlayerProperty(player, "textbold", 0) === 1) styles.push("§l");
    if (getPlayerProperty(player, "textitalic", 0) === 1) styles.push("§o");
    if (getPlayerProperty(player, "textobfuscated", 0) === 1) styles.push("§k");
    return styles;
}

/**
 * Converts a string with Minecraft section codes into a RawMessage array.
 * This is crucial for UI elements that require RawMessage[] for formatted text.
 * @param {string} text The string to parse, with § codes.
 * @returns {import("@minecraft/server-ui").RawMessage[]} An array of RawMessage objects.
 */
export function parseFormattedStringToRawMessage(text) {
    const rawMessages = [];
    let currentColor = "black"; // Default color
    let isBold = false;
    let isItalic = false;
    let isObfuscated = false;

    const regex = /§([0-9a-fk-or])/g;
    let lastIndex = 0;
    let match;

    while ((match = regex.exec(text)) !== null) {
        const code = match[1];
        const prevText = text.substring(lastIndex, match.index);

        if (prevText.length > 0) {
            rawMessages.push({
                text: prevText,
                color: currentColor,
                bold: isBold,
                italic: isItalic,
                obfuscated: isObfuscated
            });
        }

        switch (code) {
            case '0': currentColor = "black"; break; case '1': currentColor = "dark_blue"; break;
            case '2': currentColor = "dark_green"; break; case '3': currentColor = "dark_aqua"; break;
            case '4': currentColor = "dark_red"; break; case '5': currentColor = "dark_purple"; break;
            case '6': currentColor = "gold"; break; case '7': currentColor = "gray"; break;
            case '8': currentColor = "dark_gray"; break; case '9': currentColor = "blue"; break;
            case 'a': currentColor = "green"; break; case 'b': currentColor = "aqua"; break;
            case 'c': currentColor = "red"; break; case 'd': currentColor = "light_purple"; break;
            case 'e': currentColor = "yellow"; break; case 'f': currentColor = "white"; break;
            case 'g': currentColor = "minecoin_gold"; break;
            case 'h': currentColor = "quartz"; break;
            case 'i': currentColor = "iron"; break;
            case 'j': currentColor = "netherite"; break;
            case 'm': currentColor = "redstone"; break;
            case 'n': currentColor = "copper"; break;
            case 'p': currentColor = "gold"; break;
            case 'q': currentColor = "emerald"; break;
            case 's': currentColor = "diamond"; break;
            case 't': currentColor = "lapis"; break;
            case 'u': currentColor = "amethyst"; break;

            case 'k': isObfuscated = true; break;
            case 'l': isBold = true; break;
            case 'o': isItalic = true; break;

            case 'r': // Reset code
                currentColor = "black"; // Reset to black
                isBold = false;
                isItalic = false;
                isObfuscated = false;
                break;
        }
        lastIndex = regex.lastIndex;
    }

    const remainingText = text.substring(lastIndex);
    if (remainingText.length > 0) {
        rawMessages.push({
            text: remainingText,
            color: currentColor,
            bold: isBold,
            italic: isItalic,
            obfuscated: isObfuscated
        });
    }

    return rawMessages;
}

// Fully formatted text with player's color and styles.
// This function will always return a RawMessage[]
export function getFormattedText(player, text) {
    const styles = getPlayerStyles(player);
    const colorCode = getPlayerColor(player);

    // Do not append §r here, parseFormattedStringToRawMessage handles it.
    const combinedText = `${styles.join("")}${colorCode}${text}`;

    return parseFormattedStringToRawMessage(combinedText);
}

export function getHeartStyle(player) {
    const score = getPlayerProperty(player, "favheart", 0);
    const index = Math.max(0, Math.min(heartOptions.length - 1, score));
    return `${heartOptions[index].emoji} `;
}
