import { world, system } from "@minecraft/server";
import { ActionFormData, ModalFormData } from "@minecraft/server-ui";
import { getFormattedText, colorCodes } from "./textStyleUtils.js";
import { getScore, setScore } from "./scoreUtils.js";

function getOnlinePlayers() {
    return [...world.getPlayers()];
}

function getPlayerStats(player) {
    return {
        coins: getScore(player, "coins"),
        wins: getScore(player, "wins"),
        name: player.name,
        ranks: player.getTags().filter(tag => tag.startsWith("tag_"))
    };
}

function formatPlayerButton(viewer, player, sortBy) {
    const stats = getPlayerStats(player);
    const ranks = stats.ranks.map(tag => `[${tag.replace("tag_", "")}]`).join(" ");
    let extra = "";

    if (sortBy === "wins") extra = `  Wins: ${stats.wins}`;
    else if (sortBy === "coins") extra = `  Coins: ${stats.coins}`;

    return getFormattedText(viewer, `${ranks} ${player.name}${extra}`);
}

export function showStatsMenu(player) {
    const sortMode = getScore(player, "stats_sort_mode");
    const sortBy = sortMode === 1 ? "wins" : sortMode === 2 ? "coins" : "alphabetical";

    const players = getOnlinePlayers();
    const form = new ActionFormData().title(getFormattedText(player, " Player Stats"));

    form.button(getFormattedText(player, " Settings"));
    form.button(getFormattedText(player, "Sort: Alphabetical"));
    form.button(getFormattedText(player, "Sort: Most Wins"));
    form.button(getFormattedText(player, "Sort: Most Coins"));
    form.button(getFormattedText(player, "§8──── Player List ────"));

    let sorted = players.map(p => ({ player: p, stats: getPlayerStats(p) }));

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
        if (index === 1) { setScore(player, "stats_sort_mode", 0); return showStatsMenu(player); } // Alphabetical
        if (index === 2) { setScore(player, "stats_sort_mode", 1); return showStatsMenu(player); } // Wins
        if (index === 3) { setScore(player, "stats_sort_mode", 2); return showStatsMenu(player); } // Coins
        if (index === 4) return; // Divider

        const selectedPlayer = sorted[index - 5].player;
        showPlayerDetails(player, selectedPlayer);
    });
}

function showPlayerDetails(viewer, target) {
    const form = new ActionFormData()
        .title(getFormattedText(viewer, ` ${target.name}'s Stats`))
        .body(getFormattedText(viewer, `
§lName:§r ${target.name}
§lWins:§r ${getScore(target, "wins")}
§lCoins:§r ${getScore(target, "coins")}
§lRanks:§r ${target.getTags().filter(t => t.startsWith("tag_")).join(", ") || "None"}
`))
        .button(getFormattedText(viewer, " Back"));

    form.show(viewer).then(() => {
        showStatsMenu(viewer);
    });
}

function showSettings(p) {
    const form = new ModalFormData().title(getFormattedText(p, " Text Settings"));
    const colorList = Object.keys(colorCodes);
    const currentColorIndex = Math.max(0, Math.min(colorList.length - 1, getScore(p, "textcolor")));

    const bold = getScore(p, "textbold") === 1;
    const italic = getScore(p, "textitalic") === 1;

    form.dropdown(`§fText Color (Current: ${colorList[currentColorIndex]})`, colorList.map(c => `${colorCodes[c]}${c}§f`), currentColorIndex);
    form.toggle(getFormattedText(p, "§lBold"), bold);
    form.toggle(getFormattedText(p, "§oItalic"), italic);
    form.toggle(getFormattedText(p, " Back §8(Toggled ON = Cancel & discard changes)"), false);

    form.show(p).then(r => {
        if (r.canceled) return;
        const [colorIndex, boldOn, italicOn, backSelected] = r.formValues;

        if (backSelected) {
            showStatsMenu(p);
            return;
        }

        system.run(() => {
            setScore(p, "textcolor", colorIndex);
            setScore(p, "textbold", boldOn ? 1 : 0);
            setScore(p, "textitalic", italicOn ? 1 : 0);
            showStatsMenu(p);
        });
    });
}
