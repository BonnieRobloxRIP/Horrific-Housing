import { world, system } from "@minecraft/server";
import { ActionFormData, ModalFormData, MessageFormData } from "@minecraft/server-ui";
import { sendRankedMessage } from "Scripts/ranksScript.js";
import { getPlayerProperty, setPlayerProperty, removePlayerProperty } from "./dynamicPropertyUtils.js";
import { colorCodes, heartOptions, getFormattedText, getHeartStyle, parseFormattedStringToRawMessage } from "./textStyleUtils.js";

let internalEmojis = [];
const MAX_FAVORITES = 10;

export function setEmojis(list) {
    internalEmojis = list;
}

function getFavorites(p) {
    return internalEmojis.filter(e => p.hasTag(`fav_${e.id}`)).sort((a, b) => a.id.localeCompare(b.id));
}

export { setPlayerProperty as setScore, getPlayerProperty as getScore, removePlayerProperty as removeScore };

function showPrompt(p, emoji, isRemove, goBackTo) {
    const msg = new MessageFormData()
        .title(getFormattedText(p, isRemove ? "Remove Favorite?" : "Add to Favorites?")[0])
        .body(`${emoji.emoji} ${emoji.displayName}\n\nAre you sure you want to ${isRemove ? "remove" : "add"} this emoji ${isRemove ? "from" : "to"} your favorites?\n\n§8To disable this prompt, toggle it off in settings.`)
        .button1("Yes").button2("No");

    msg.show(p).then(res => {
        if (res.canceled) return;
        if (res.selection === 0) {
            const current = getFavorites(p);
            if (isRemove) {
                p.removeTag(`fav_${emoji.id}`);
            } else if (current.length >= MAX_FAVORITES) {
                new MessageFormData()
                    .title(getFormattedText(p, "Favorites Full")[0])
                    .body("You’ve reached the maximum of 10 favorite emojis. Remove one before adding another.")
                    .button1("Ok")
                    .show(p).then(res => {
                        if (res.canceled) return;
                        goBackTo?.(p) ?? showMainMenu(p);
                    });
                return;
            } else {
                p.addTag(`fav_${emoji.id}`);
            }
        }
        goBackTo?.(p);
    });
}

function showLetterCategory(p, letter) {
    const matches = internalEmojis.filter(e => {
        const char = e.displayName[0]?.toUpperCase() ?? "#";
        return /[A-Z]/.test(char) ? char === letter : letter === "#";
    });

    const form = new ActionFormData().title(getFormattedText(p, ` ${letter} Emojis`)[0]);
    form.button(getFormattedText(p, " Back")[0]);

    if (matches.length === 0) {
        form.button("No emojis in this category");
    } else {
        for (const emoji of matches) {
            const fav = p.hasTag(`fav_${emoji.id}`) ? getHeartStyle(p) : "";
            form.button(getFormattedText(p, `${emoji.emoji} ${emoji.displayName} ${emoji.id} ${fav}`)[0]);
        }
    }

    form.show(p).then(r => {
        if (r.canceled) return;
        if (r.selection === 0) return showMainMenu(p);

        const selected = matches[r.selection - 1];
        if (!selected) return;

        const allowPrompt = getPlayerProperty(p, "emoji_prompt", 0) === 1;
        const isFav = p.hasTag(`fav_${selected.id}`);

        if (allowPrompt) {
            showPrompt(p, selected, isFav, () => showLetterCategory(p, letter));
        } else {
            sendRankedMessage(p, selected.emoji);
            showLetterCategory(p, letter);
        }
    });
}

function showFavorites(p) {
    const favs = getFavorites(p);
    const allowPrompt = getPlayerProperty(p, "emoji_prompt", 0) === 1;
    const heart = getHeartStyle(p);

    const form = new ActionFormData().title(getFormattedText(p, `${heart} Your Favorites`)[0]);
    form.button(getFormattedText(p, " Back")[0]);

    if (favs.length === 0) {
        form.button("You have no favorites yet. Click a heart to favorite an emoji.");
    } else {
        for (const emoji of favs) {
            let line = `${emoji.emoji} ${emoji.displayName} ${emoji.id}`;
            if (allowPrompt) line += " §8(Click to remove)";
            form.button(getFormattedText(p, line)[0]);
        }
    }

    form.show(p).then(r => {
        if (r.canceled) return;
        if (r.selection === 0) return showMainMenu(p);

        const selected = favs[r.selection - 1];
        if (!selected) return;

        if (allowPrompt) {
            showPrompt(p, selected, true, showFavorites);
        } else {
            sendRankedMessage(p, selected.emoji);
            showFavorites(p);
        }
    });
}

function showSettings(p) {
    const form = new ModalFormData().title(getFormattedText(p, " Settings")[0]);
    const colorList = Object.keys(colorCodes);
    const currentColorIndex = Math.max(0, Math.min(colorList.length - 1, getPlayerProperty(p, "textcolor", 0)));

    const bold = getPlayerProperty(p, "textbold", 0) === 1;
    const italic = getPlayerProperty(p, "textitalic", 0) === 1;
    const obfuscated = getPlayerProperty(p, "textobfuscated", 0) === 1;
    const showCount = getPlayerProperty(p, "emoji_show_favcount", 0) === 1;
    const allowPrompt = getPlayerProperty(p, "emoji_prompt", 0) === 1;
    const heartScore = Math.max(0, Math.min(heartOptions.length - 1, getPlayerProperty(p, "favheart", 0)));

    form.dropdown(
        parseFormattedStringToRawMessage(`§fText Color (Current: ${colorList[currentColorIndex]})`)[0],
        colorList.map(c => ({ text: c.replace(/§./g, '') }))
    );

    form.dropdown(
        getFormattedText(p, `Favorite Heart Style (Current: ${heartOptions[heartScore].emoji} ${heartOptions[heartScore].displayName})`)[0], // Label is RawMessage
        heartOptions.map(e => ({ text: e.displayName }))
    );

    form.toggle(getFormattedText(p, "§lBold")[0], bold);
    form.toggle(getFormattedText(p, "§oItalic")[0], italic);
    form.toggle(getFormattedText(p, "§kObfuscated")[0], obfuscated);
    form.toggle(getFormattedText(p, "Show Favorites Count")[0], showCount);
    form.toggle(getFormattedText(p, "Add/Remove Favorite Emoji Prompt")[0], allowPrompt);
    form.toggle(getFormattedText(p, " Back §8(Toggled ON = Cancel & discard changes)")[0], false);

    form.show(p).then(r => {
        if (r.canceled) return;
        const [colorIndex, heartIndex, boldOn, italicOn, obfuscatedOn, countOn, promptOn, backSelected] = r.formValues;

        if (backSelected) {
            showMainMenu(p);
            return;
        }

        system.run(() => {
            setPlayerProperty(p, "textcolor", colorIndex);
            setPlayerProperty(p, "textbold", boldOn ? 1 : 0);
            setPlayerProperty(p, "textitalic", italicOn ? 1 : 0);
            setPlayerProperty(p, "textobfuscated", obfuscatedOn ? 1 : 0); // Save new property
            setPlayerProperty(p, "favheart", heartIndex);
            setPlayerProperty(p, "emoji_show_favcount", countOn ? 1 : 0);
            setPlayerProperty(p, "emoji_prompt", promptOn ? 1 : 0);
            showMainMenu(p);
        });
    });
}

export function showEmojiMenu(player) {
    showMainMenu(player);
}

function showMainMenu(p) {
    const favs = getFavorites(p);
    const showCount = getPlayerProperty(p, "emoji_show_favcount", 0) === 1;
    const form = new ActionFormData().title(getFormattedText(p, " Emoji Menu")[0]);

    const heart = getHeartStyle(p);
    const letters = [...new Set(internalEmojis.map(e => {
        const char = e.displayName[0]?.toUpperCase() ?? "#";
        return /[A-Z]/.test(char) ? char : "#";
    }))].sort();

    form.button(getFormattedText(p, showCount ? `${heart} Favorites (${favs.length}/${MAX_FAVORITES})` : `${heart} Favorites`)[0]);
    form.button(getFormattedText(p, " Settings")[0]);
    for (const letter of letters) form.button(getFormattedText(p, letter)[0]);

    form.show(p).then(r => {
        if (r.canceled) return;
        if (r.selection === 0) return showFavorites(p);
        if (r.selection === 1) return showSettings(p);
        showLetterCategory(p, letters[r.selection - 2]);
    });
}
