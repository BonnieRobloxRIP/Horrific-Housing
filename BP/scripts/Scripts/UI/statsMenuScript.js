import { world, system } from "@minecraft/server";
import { ActionFormData, ModalFormData } from "@minecraft/server-ui";
import { getFormattedText, parseFormattedStringToRawMessage, colorCodes, tagDisplayMap, ownedTagMap } from "./textStyleUtils.js";
import { getPlayerProperty, setPlayerProperty } from "./dynamicPropertyUtils.js";
import { getScore as getScoreboardScore, setScore as setScoreboardScore } from "./scoreUtils.js";

// change the name of the dynamic property functions for general use (e.g., stats_sort_mode, textcolor)
const getDynamicProperty = getPlayerProperty;
const setDynamicProperty = setPlayerProperty;


function getOnlinePlayers() {
    return [...world.getPlayers()];
}

function getPlayerStats(player) {
    const tags = player.getTags();
    return {
        // Use scoreboard utility functions for wins and coins
        coins: getScoreboardScore(player, "coins"),
        wins: getScoreboardScore(player, "wins"),
        name: player.name,
        ranks: tags.filter(tag => tag.startsWith("tag_")),
        allTags: tags
    };
}

function formatPlayerButton(viewer, player, sortBy) {
    const stats = getPlayerStats(player);
    const validTags = Object.keys(tagDisplayMap);

    const ranks = stats.ranks
        .filter(tag => tagDisplayMap[tag])
        .map(tag => tagDisplayMap[tag])
        .join(" ") || "";

    let namePrefix = "";
    if (player.name === "BonnieRobloxRIP") namePrefix += " ";
    if (player.name === "Marshmallow997") namePrefix += " ";
    if (player.name === "niceninjapro") namePrefix += " ";

    if (["BonnieRobloxRIP", "Marshmallow997"].includes(player.name)) {
        namePrefix += "[§l§dDev§r]";
    }
    if (player.name === "niceninjapro") {
        namePrefix += "[§l§dScriptor§r]";
    }

    let extra = "";
    if (sortBy === "wins") extra = `  §l§b Wins: ${stats.wins}`;
    else if (sortBy === "coins") extra = `  §l§e Coins: ${stats.coins}`;

    let dynamicRoleTag = "";

    if (stats.ranks.includes("game")) {
        dynamicRoleTag = tagDisplayMap["game"];
    } else {
        dynamicRoleTag = tagDisplayMap["lobby"];
    }

    const parts = [namePrefix.trim()];

    if (ranks) parts.push(ranks);               // Add formatted tag ranks like [Bunny], etc.
    if (dynamicRoleTag) parts.push(dynamicRoleTag); // Gamer or Lobby
    parts.push(player.name);
    if (extra) parts.push(extra);

    // Directly return the formatted string.
    return parts.join(" ");
}

export function showStatsMenu(player) {
    // Use dynamic property for sort mode
    const sortMode = getDynamicProperty(player, "stats_sort_mode", 0); // Default to 0 (alphabetical)
    const sortBy = sortMode === 1 ? "wins" : sortMode === 2 ? "coins" : "alphabetical";

    const players = getOnlinePlayers();
    const form = new ActionFormData().title(getFormattedText(player, " Player Stats")[0]);

    form.button(getFormattedText(player, " Settings")[0]);
    form.button(getFormattedText(player, "Sort: Alphabetical")[0]);
    form.button(getFormattedText(player, "Sort: Most Wins")[0]);
    form.button(getFormattedText(player, "Sort: Most Coins")[0]);
    form.button("§8§l──── Player List ────§r");

    let sorted = players.map(p => ({ player: p, stats: getPlayerStats(p) }));

    // Sorting logic, comparing the fetched stats
    if (sortBy === "coins") sorted.sort((a, b) => b.stats.coins - a.stats.coins);
    else if (sortBy === "wins") sorted.sort((a, b) => b.stats.wins - a.stats.wins);
    else sorted.sort((a, b) => a.stats.name.localeCompare(b.stats.name));

    for (const { player: p } of sorted) {
        form.button(formatPlayerButton(player, p, sortBy));
    }

    form.show(player).then(res => {
        if (res.canceled) return;

        const index = res.selection;

        if (index === 0) return showSettings(player); // Settings
        // Use dynamic property for sort_mode
        if (index === 1) { setDynamicProperty(player, "stats_sort_mode", 0); return showStatsMenu(player); } // Alphabetical
        if (index === 2) { setDynamicProperty(player, "stats_sort_mode", 1); return showStatsMenu(player); } // Wins
        if (index === 3) { setDynamicProperty(player, "stats_sort_mode", 2); return showStatsMenu(player); } // Coins
        if (index === 4) return showStatsMenu(player); // divider, it opens the menu again if pressed

        const selectedPlayer = sorted[index - 5].player;
        showPlayerDetails(player, selectedPlayer);
    });
}

function showPlayerDetails(viewer, target) {
    const allTags = target.getTags();
    const ownedTagsFormatted = allTags
        .filter(tag => tag.endsWith("1") && ownedTagMap[tag])
        .map(tag => ownedTagMap[tag])
        .join(", ");

    // Unicode name prefixes
    let unicodePrefix = "";
    if (target.name === "BonnieRobloxRIP") unicodePrefix += " ";
    if (target.name === "Marshmallow997") unicodePrefix += " ";
    if (target.name === "niceninjapro") unicodePrefix += " ";

    const title = `${unicodePrefix}${target.name}'s Stats`;
    // Use scoreboard utility script for wins and coins
    const wins = getScoreboardScore(target, "wins");
    const coins = getScoreboardScore(target, "coins");

    const form = new ActionFormData()
    form.title(title);
    form.body(String(`
Name: ${target.name}
§l§b Wins: ${wins}
§l§e Coins: ${coins}
§l§7Tags§r: ${ownedTagsFormatted || "None"}
        `.trim()))
        .button(getFormattedText(viewer, " Back")[0]);

    form.show(viewer).then(res => {
        if (res.canceled) return;
        showStatsMenu(viewer);
    });
}

function showSettings(p) {
    const form = new ModalFormData().title(parseFormattedStringToRawMessage("§f Text Settings")[0]);

    const colorListKeys = Object.keys(colorCodes); // Get the keys (e.g., "§0Black§r")
    // Retrieve current color using getDynamicProperty
    const currentColorValue = getDynamicProperty(p, "textcolor", 0);
    const currentColorIndex = Math.max(0, Math.min(colorListKeys.length - 1, currentColorValue));

    const bold = getDynamicProperty(p, "textbold", 0) === 1;
    const italic = getDynamicProperty(p, "textitalic", 0) === 1;

    // --- COLOR DROPDOWN ---
    const colorDropdownOptions = [{ text: "§0Unchanged" }].concat(
        // Map colorListKeys to plain text for the dropdown options
        colorListKeys.map(key => ({ text: key.replace(/§./g, '') }))
    );

    form.dropdown(
        parseFormattedStringToRawMessage(`§fText Color (Current: ${colorListKeys[currentColorIndex].replace(/§./g, '')})`)[0],
        colorDropdownOptions
        // Default value is omitted. "Unchanged" is the initial selection.
    );

    // --- BOLD DROPDOWN ---
    const boldOptions = [{ text: "§0Unchanged" }, { text: "§qOn" }, { text: "§cOff" }];
    form.dropdown(
        parseFormattedStringToRawMessage("§f§lBold")[0],
        boldOptions
        // Default value is omitted. "Unchanged" is the initial selection.
    );

    // --- ITALIC DROPDOWN ---
    const italicOptions = [{ text: "§0Unchanged" }, { text: "§qOn" }, { text: "§cOff" }];
    form.dropdown(
        parseFormattedStringToRawMessage("§f§oItalic")[0],
        italicOptions
        // Default value is omitted. "Unchanged" is the initial selection.
    );

    // --- OPTIONS DROPDOWN (Back / Apply) ---
    form.dropdown(
        parseFormattedStringToRawMessage("§f Options")[0],
        [{ text: "§qApply Changes" }, { text: "§cGo Back & Discard" }]
        // Default value is omitted. "Apply Changes" will be the initial selection.
    );

    form.show(p).then(r => {
        if (r.canceled) return;

        // Adjust destructuring for the added "Unchanged" option and order.
        // selectedColorOptionIndex is 0 for "Unchanged", 1 for Black, etc.
        const [selectedColorOptionIndex, selectedBoldOptionIndex, selectedItalicOptionIndex, backOptionIndex] = r.formValues;

        // Only update property if "Unchanged" (index 0) was NOT selected
        if (selectedColorOptionIndex !== 0) {
            // Subtract 1 because "Unchanged" is at index 0, so actual color index is shifted
            setDynamicProperty(p, "textcolor", selectedColorOptionIndex - 1);
        }

        if (selectedBoldOptionIndex !== 0) {
            // 'On' is index 1, 'Off' is index 2
            setDynamicProperty(p, "textbold", selectedBoldOptionIndex === 1 ? 1 : 0);
        }

        if (selectedItalicOptionIndex !== 0) {
            // 'On' is index 1, 'Off' is index 2
            setDynamicProperty(p, "textitalic", selectedItalicOptionIndex === 1 ? 1 : 0);
        }

        const backSelected = backOptionIndex === 1; // 'Go Back & Discard' is index 1

        if (backSelected) {
            showStatsMenu(p); // Go back to stats menu without saving changes
            return;
        }

        system.run(() => {
            // Properties are set conditionally above
            showStatsMenu(p); // Apply changes and then show stats menu
        });
    });
}
