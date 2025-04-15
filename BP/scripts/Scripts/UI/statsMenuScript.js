import { world, system } from "@minecraft/server";
import { ActionFormData, ModalFormData } from "@minecraft/server-ui";
import { getFormattedText, colorCodes, tagDisplayMap, ownedTagMap } from "./textStyleUtils.js";
import { getScore, setScore } from "./scoreUtils.js";

function getOnlinePlayers() {
    return [...world.getPlayers()];
}

function getPlayerStats(player) {
    const tags = player.getTags();
    return {
        coins: getScore(player, "coins"),
        wins: getScore(player, "wins"),
        name: player.name,
        ranks: tags.filter(tag => tag.startsWith("tag_")),
        allTags: tags
    };
}

function formatPlayerButton(player, sortBy) {
    const stats = getPlayerStats(player);
    const validTags = Object.keys(tagDisplayMap);

    const ranks = stats.ranks
        .filter(tag => validTags.includes(tag))
        .map(tag => tagDisplayMap[tag])
        .join(" ");

    let namePrefix = "";
    if (player.name === "BonnieRobloxRIP") namePrefix += " ";
    if (player.name === "Marshmallow997") namePrefix += " ";
    if (player.name === "niceninjapro") namePrefix += " ";

    if (["BonnieRobloxRIP", "Marshmallow997"].includes(player.name)) {
        namePrefix += "[§l§dDev§r] ";
    } else if (player.name === "niceninjapro") {
        namePrefix += "[§l§dScriptor§r] ";
    }

    let extra = "";
    if (sortBy === "wins") extra = `   §l§bWins: ${stats.wins}`;
    else if (sortBy === "coins") extra = `   §l§eCoins: ${stats.coins}`;

    let dynamicRoleTag = "";

    if (stats.ranks.includes("game")) {
        dynamicRoleTag = tagDisplayMap["game"];
    } else {
        dynamicRoleTag = tagDisplayMap["lobby"];
    }

    return `${namePrefix}${ranks} ${dynamicRoleTag} ${player.name}${extra}`;
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
    form.button(getFormattedText(player, "§8§l────§r§8 Player List §l────§r"));

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

    // Unicode name prefix
    let unicodePrefix = "";
    if (target.name === "BonnieRobloxRIP") unicodePrefix += " ";
    if (target.name === "Marshmallow997") unicodePrefix += " ";
    if (target.name === "niceninjapro") unicodePrefix += " ";

    const title = `${unicodePrefix}[§l${target.name}§r]'s Stats`;

    const wins = getScore(target, "wins");
    const coins = getScore(target, "coins");

    const form = new ActionFormData()
        .title(viewer, title)
        .body(`
Name: ${target.name}\n

§l§b Wins: ${wins}
§l§e Coins: ${coins}\n

§l§8Tags§r: ${ownedTagsFormatted || "None"}
        `.trim()) // Unformatted body
        .button(getFormattedText(viewer, " Back"));

    form.show(viewer).then(res => {
        if (res.canceled) return;
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
