import { world, system } from "@minecraft/server";
import { ActionFormData, ModalFormData, MessageFormData } from "@minecraft/server-ui";
import { sendRankedMessage } from "Scripts/ranksScript.js";
import { getScore, setScore, removeScore, getOrCreateObjective } from "./scoreUtils.js";
import { colorCodes, heartOptions, getFormattedText, getHeartStyle } from "./textStyleUtils.js";

let internalEmojis = [];

export function setEmojis(list) {
    internalEmojis = list;
}

function getScoreInternal(player, objectiveName) {
    const objective = getOrCreateObjective(objectiveName);
    try {
        return objective.getScore(player);
    } catch {
        return 0;
    }
}

export { setScore, getScoreInternal as getScore, removeScore };

export function showEmojiMenu(player) {
    const emojis = internalEmojis;
    const MAX_FAVORITES = 10;

    function getFavorites(p) {
        return emojis.filter(e => p.hasTag(`fav_${e.id}`)).sort((a, b) => a.id.localeCompare(b.id));
    }

    function showPrompt(p, emoji, isRemove, goBackTo) {
        const msg = new MessageFormData()
            .title(getFormattedText(p, isRemove ? "Remove Favorite?" : "Add to Favorites?"))
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
                        .title(getFormattedText(p, "Favorites Full"))
                        .body("You’ve reached the maximum of 10 favorite emojis. Remove one before adding another.")
                        .button1("Ok")
                        .show(p).then(() => goBackTo?.(p) ?? showMainMenu(p));
                    return;
                } else {
                    p.addTag(`fav_${emoji.id}`);
                }
            }
            goBackTo?.(p);
        });
    }

    function showLetterCategory(p, letter) {
        const matches = emojis.filter(e => {
            const char = e.displayName[0]?.toUpperCase() ?? "#";
            return /[A-Z]/.test(char) ? char === letter : letter === "#";
        });

        const form = new ActionFormData().title(getFormattedText(p, ` ${letter} Emojis`));
        form.button(getFormattedText(p, " Back"));

        if (matches.length === 0) {
            form.button("(No emojis in this category)");
        } else {
            for (const emoji of matches) {
                const fav = p.hasTag(`fav_${emoji.id}`) ? getHeartStyle(p) : "";
                form.button(`${emoji.emoji} ${getFormattedText(p, emoji.displayName)} ${getFormattedText(p, emoji.id)} ${fav}`);
            }
        }

        form.show(p).then(r => {
            if (r.canceled) return;

            const selected = matches[r.selection - 1];
            if (!selected) return;

            const allowRemove = getScore(p, "emoji_prompt") === 1;
            const isFav = p.hasTag(`fav_${selected.id}`);

            if (allowRemove) {
                showPrompt(p, selected, isFav, () => showLetterCategory(p, letter));
            } else {
                sendRankedMessage(p, selected.emoji);
                showLetterCategory(p, letter);
            }
        });
    }

    function showFavorites(p) {
        const favs = getFavorites(p);
        const allowRemove = getScore(p, "emoji_prompt") === 1;
        const heart = getHeartStyle(p);

        const form = new ActionFormData().title(getFormattedText(p, `${heart} Your Favorites`));
        form.button(getFormattedText(p, " Back"));

        if (favs.length === 0) {
            form.button(getFormattedText(p, "You have no favorites yet. Click a heart to favorite an emoji."));
        } else {
            for (const emoji of favs) {
                let line = `${emoji.emoji} ${getFormattedText(p, emoji.displayName)} ${getFormattedText(p, emoji.id)}`;
                if (allowRemove) line += " §8(Click to remove)";
                form.button(line);
            }
        }

        form.show(p).then(r => {
            if (r.canceled) return;

            const selected = favs[r.selection - 1];
            if (!selected) return;

            if (allowRemove) {
                showPrompt(p, selected, true, showFavorites);
            } else {
                sendRankedMessage(p, selected.emoji);
                showFavorites(p);
            }
        });
    }

    function showSettings(p) {
        const form = new ModalFormData().title(getFormattedText(p, " Settings"));
        const colorList = Object.keys(colorCodes);
        const currentColorIndex = Math.max(0, Math.min(colorList.length - 1, getScore(p, "textcolor")));

        const bold = getScore(p, "textbold") === 1;
        const italic = getScore(p, "textitalic") === 1;
        const showCount = getScore(p, "emoji_show_favcount") === 1;
        const allowPrompt = getScore(p, "emoji_prompt") === 1;
        const heartScore = Math.max(0, Math.min(heartOptions.length - 1, getScore(p, "favheart")));

        form.dropdown(`§fText Color (Current: ${colorList[currentColorIndex]})`, colorList.map(c => `${colorCodes[c]}${c}§f`), currentColorIndex);
        form.dropdown(getFormattedText(p, `Favorite Heart Style (Current: ${heartOptions[heartScore].emoji} ${heartOptions[heartScore].displayName})`), heartOptions.map(e => `${e.emoji} ${e.displayName}`), heartScore);
        form.toggle(getFormattedText(p, "§lBold"), bold);
        form.toggle(getFormattedText(p, "§oItalic"), italic);
        form.toggle(getFormattedText(p, "Show Favorites Count"), showCount);
        form.toggle(getFormattedText(p, "Add/Remove Favorite Emoji Prompt"), allowPrompt);
        form.toggle(getFormattedText(p, " Back §8(Toggled ON = Cancel & discard changes)"), false);

        form.show(p).then(r => {
            if (r.canceled) return;
            const [colorIndex, heartIndex, boldOn, italicOn, countOn, promptOn, backSelected] = r.formValues;

            if (backSelected) {
                showMainMenu(p);
                return;
            }

            system.run(() => {
                setScore(p, "textcolor", colorIndex);
                setScore(p, "textbold", boldOn ? 1 : 0);
                setScore(p, "textitalic", italicOn ? 1 : 0);
                setScore(p, "favheart", heartIndex);
                setScore(p, "emoji_show_favcount", countOn ? 1 : 0);
                setScore(p, "emoji_prompt", promptOn ? 1 : 0);
                showMainMenu(p);
            });
        });
    }

    function showMainMenu(p) {
        const favs = getFavorites(p);
        const showCount = getScore(p, "emoji_show_favcount") === 1;
        const form = new ActionFormData().title(getFormattedText(p, " Emoji Menu"));

        const heart = getHeartStyle(p);
        const letters = [...new Set(emojis.map(e => {
            const char = e.displayName[0]?.toUpperCase() ?? "#";
            return /[A-Z]/.test(char) ? char : "#";
        }))].sort();

        form.button(getFormattedText(p, showCount ? `${heart} Favorites (${favs.length}/${MAX_FAVORITES})` : `${heart} Favorites`));
        form.button(getFormattedText(p, " Settings"));
        for (const letter of letters) form.button(getFormattedText(p, letter));

        form.show(p).then(r => {
            if (r.canceled) return;
            if (r.selection === 0) return showFavorites(p);
            if (r.selection === 1) return showSettings(p);
            showLetterCategory(p, letters[r.selection - 2]);
        });
    }

    showMainMenu(player);
}
