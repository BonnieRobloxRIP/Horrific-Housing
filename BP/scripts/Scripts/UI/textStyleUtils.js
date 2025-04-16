import { getScore } from "./scoreUtils.js";

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

// Named color map
export const colorCodes = {
    "§mRedstone§r": "§m", "§4Dark Red§r": "§4", "§cRed§r": "§c", "§nCopper§r": "§n", "§6Orange§r": "§6",
    "§pGold§r": "§p", "§gMinecoin Gold§r": "§g", "§eYellow§r": "§e", "§aGreen§r": "§a", "§qEmerald§r": "§q",
    "§2Dark Green§r": "§2", "§bAqua§r": "§b", "§sDiamond§r": "§s", "§3Dark Aqua§r": "§3", "§9Blue§r": "§9",
    "§tLapis§r": "§t", "§uAmethyst§r": "§u", "§5Dark Purple§r": "§5", "§dLight Purple§r": "§d",
    "§0Black§r": "§0", "§jNetherite§r": "§j", "§8Dark Gray§r": "§8", "§7Gray§r": "§7", "§iIron§r": "§i",
    "§hQuartz§r": "§h", "§fWhite§r": "§f"
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

// Gets the selected text color code from scoreboard
export function getPlayerColor(player) {
    const colorScore = getScore(player, "textcolor");
    const colors = Object.values(colorCodes);
    return colors[Math.max(0, Math.min(colors.length - 1, colorScore))] ?? "§f";
}

// Gets bold/italic text styles as array of formatting codes
export function getPlayerStyles(player) {
    const styles = [];
    if (getScore(player, "textbold") === 1) styles.push("§l");
    if (getScore(player, "textitalic") === 1) styles.push("§o");
    return styles;
}

// Fully formatted text with color and styles
export function getFormattedText(player, text) {
    return `${getPlayerStyles(player).join("")}${getPlayerColor(player)}${text}§r`;
}

// Returns selected heart emoji
export function getHeartStyle(player) {
    const score = getScore(player, "favheart");
    const index = Math.max(0, Math.min(heartOptions.length - 1, score));
    return `${heartOptions[index].emoji} `;
}
