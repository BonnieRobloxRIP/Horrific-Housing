import { world, system } from "@minecraft/server";
import { ActionFormData, ModalFormData, MessageFormData } from "@minecraft/server-ui";
import { sendRankedMessage } from "./ranksScript.js";

function handleRankedMessage(player, message) {
    sendRankedMessage(player, message);
}

function getOrCreateObjective(name) {
    let objective = world.scoreboard.getObjective(name);
    if (!objective) {
        objective = world.scoreboard.addObjective(name, name);
    }
    return objective;
}

function setScore(player, objectiveName, value) {
    const objective = getOrCreateObjective(objectiveName);
    objective.setScore(player, value);
}

function getScore(player, objectiveName) {
    const objective = getOrCreateObjective(objectiveName);
    try {
        return objective.getScore(player);
    } catch {
        return 0; // Default if no score
    }
}

function removeScore(player, objectiveName) {
    const objective = world.scoreboard.getObjective(objectiveName);
    if (objective) {
        objective.removeParticipant(player);
    }
}

export { setScore, getScore, removeScore };

let internalEmojis = [];

export function setEmojis(list) {
    internalEmojis = list;
}

export function showEmojiMenu(player) {
    const emojis = internalEmojis;
    const MAX_FAVORITES = 10;

    const colorCodes = {
        "§mRedstone§r": "§m", "§4Dark Red§r": "§4", "§cRed§r": "§c", "§nCopper§r": "§n", "§6Orange§r": "§6",
        "§pGold§r": "§p", "§gMinecoin Gold§r": "§g", "§eYellow§r": "§e", "§aGreen§r": "§a", "§qEmerald§r": "§q",
        "§2Dark Green§r": "§2", "§bAqua§r": "§b", "§sDiamond§r": "§s", "§3Dark Aqua§r": "§3", "§9Blue§r": "§9",
        "§tLapis§r": "§t", "§uAmethyst§r": "§u", "§5Dark Purple§r": "§5", "§dLight Purple§r": "§d",
        "§0Black§r": "§0", "§jNetherite§r": "§j", "§8Dark Gray§r": "§8", "§7Gray§r": "§7", "§iIron§r": "§i",
        "§hQuartz§r": "§h", "§fWhite§r": "§f"
    };

    function getScore(player, objective) {
        try {
            return world.scoreboard.getObjective(objective)?.getScore(player.scoreboardIdentity) ?? 0;
        } catch {
            return 0;
        }
    }

    function getPlayerColor(player) {
        const colorScore = getScore(player, "textcolor");
        const index = Math.max(0, Math.min(Object.keys(colorCodes).length - 1, colorScore));
        return Object.values(colorCodes)[index] ?? "§f";
    }

    function getPlayerStyles(player) {
        const styles = [];
        if (getScore(player, "textbold") === 1) styles.push("§l");
        if (getScore(player, "textitalic") === 1) styles.push("§o");
        return styles;
    }

    function getFormattedText(player, text) {
        return getPlayerStyles(player).join("") + getPlayerColor(player) + text + "§r";
    }

    function getFavorites(player) {
        return emojis
            .filter(e => player.hasTag(`fav_${e.id}`))
            .sort((a, b) => a.id.localeCompare(b.id));
    }

    function showPrompt(player, emoji, isRemove, goBackTo) {
        const msg = new MessageFormData()
            .title(getFormattedText(player, isRemove ? "Remove Favorite?" : "Add to Favorites?"))
            .body(`${emoji.emoji} ${emoji.displayName}\n\nAre you sure you want to ${isRemove ? "remove" : "add"} this emoji ${isRemove ? "from" : "to"} your favorites?\n\n§8To disable this prompt, toggle it off in settings.`)
            .button1("Yes")
            .button2("No");

        msg.show(player).then(res => {
            if (res.canceled) return;
            if (res.selection === 0) {
                if (isRemove) {
                    player.removeTag(`fav_${emoji.id}`);
                } else {
                    const current = getFavorites(player);
                    if (current.length >= MAX_FAVORITES) {
                        const limitForm = new MessageFormData()
                            .title(getFormattedText(player, "Favorites Full"))
                            .body("You’ve reached the maximum of 10 favorite emojis. Remove one before adding another.")
                            .button1("Ok");
                        limitForm.show(player).then(res => {
                            if (res.canceled) return; // Do nothing, exit entirely
                            if (goBackTo) goBackTo(player);
                            else showMainMenu(player);
                        });
                        return;
                    }
                    player.addTag(`fav_${emoji.id}`);
                }
            }
            goBackTo(player);
        });
    }

    function showLetterCategory(player, letter) {
        const matches = emojis.filter(e => {
            const char = e.displayName[0]?.toUpperCase() ?? "#";
            return (/[A-Z]/.test(char) ? char === letter : letter === "#");
        });

        const form = new ActionFormData().title(getFormattedText(player, ` ${letter} Emojis`));
        form.button((getFormattedText(player, " Back")));

        if (matches.length === 0) {
            form.button("(No emojis in this category)");
        } else {
            for (const emoji of matches) {
                const fav = player.hasTag(`fav_${emoji.id}`) ? getHeartStyle(player) : "";
                form.button(`${emoji.emoji} ${getFormattedText(player, emoji.displayName)} ${getFormattedText(player, emoji.id)} ${fav}`);
            }
        }

        form.show(player).then(r => {
            if (r.canceled) return;
            if (r.selection === 0) return showMainMenu(player);
            const selected = matches[r.selection - 1];
            if (!selected) return;

            const allowRemove = getScore(player, "emoji_prompt") === 1;
            const isFav = player.hasTag(`fav_${selected.id}`);

            if (allowRemove) {
                showPrompt(player, selected, isFav, () => showLetterCategory(player, letter));
            } else {
                // Instead of adding/removing favorite, send emoji.id in chat
                handleRankedMessage(player, selected.emoji);
                showLetterCategory(player, letter);
            }
        });
    }

    const heartOptions = [
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

    function getHeartStyle(player) {
        const score = getScore(player, "favheart");
        const index = Math.max(0, Math.min(heartOptions.length - 1, score));
        return heartOptions[index].emoji + " ";
    }

    function showFavorites(player) {
        const favs = getFavorites(player);
        const allowRemove = getScore(player, "emoji_prompt") === 1;
        const heart = getHeartStyle(player);

        const form = new ActionFormData().title(getFormattedText(player, `${heart} Your Favorites`));
        form.button((getFormattedText(player, " Back")));

        if (favs.length === 0) {
            form.button(getFormattedText(player, "You have no favorites yet. Click a heart to favorite an emoji."));
        } else {
            for (const emoji of favs) {
                let line = `${emoji.emoji} ${getFormattedText(player, emoji.displayName)} ${getFormattedText(player, emoji.id)}`;
                if (allowRemove) line += " §8(Click to remove)";
                form.button(line);
            }
        }

        form.show(player).then(r => {
            if (r.canceled) return;
            if (r.selection === 0) return showMainMenu(player);

            const selected = favs[r.selection - 1];
            if (!selected) return;

            if (allowRemove) {
                showPrompt(player, selected, true, showFavorites);
            } else {
                // Instead of adding/removing favorite, send emoji.id in chat
                handleRankedMessage(player, selected.emoji);
                showFavorites(player);
            }
        });
    }

    function showSettings(player) {
        const form = new ModalFormData().title(getFormattedText(player, " Settings"));
        const colorList = Object.keys(colorCodes);
        const currentColorIndex = Math.max(0, Math.min(colorList.length - 1, getScore(player, "textcolor")));

        const bold = getScore(player, "textbold") === 1;
        const italic = getScore(player, "textitalic") === 1;
        const showCount = getScore(player, "emoji_show_favcount") === 1;
        const allowPrompt = getScore(player, "emoji_prompt") === 1;

        form.dropdown(`§fText Color (Current: ${colorList[currentColorIndex]})`, colorList.map(c => `${colorCodes[c]}${c}§f`), currentColorIndex);
        const heartList = heartOptions.map(e => `${e.emoji} ${e.displayName}`);
        const heartScore = Math.max(0, Math.min(heartOptions.length - 1, getScore(player, "favheart")));
        form.dropdown(getFormattedText(player, `Favorite Heart Style (Current: ${heartOptions[heartScore].emoji} ${heartOptions[heartScore].displayName})`), heartList, heartScore);
        form.toggle(getFormattedText(player, "§lBold"), bold);
        form.toggle(getFormattedText(player, "§oItalic"), italic);
        form.toggle(getFormattedText(player, "Show Favorites Count"), showCount);
        form.toggle(getFormattedText(player, "Add/Remove Favorite Emoji Prompt"), allowPrompt);
        form.toggle(getFormattedText(player, " Back §8(Toggled ON = Cancel & discard changes)"), false); // OFF by default

        form.show(player).then(r => {
            if (r.canceled) return;
            const [colorIndex, heartIndex, boldOn, italicOn, countOn, promptOn, backSelected] = r.formValues;

            if (backSelected) {
                showMainMenu(player);
                return;
            }

            system.run(() => {
                setScore(player, "textcolor", colorIndex);
                setScore(player, "textbold", boldOn ? 1 : 0);
                setScore(player, "textitalic", italicOn ? 1 : 0);
                setScore(player, "favheart", heartIndex);
                setScore(player, "emoji_show_favcount", countOn ? 1 : 0);
                setScore(player, "emoji_prompt", promptOn ? 1 : 0);
                showMainMenu(player);
            });
        });
    }

    function showMainMenu(player) {
        const favs = getFavorites(player);
        const showCount = getScore(player, "emoji_show_favcount") === 1;
        const form = new ActionFormData().title(getFormattedText(player, " Emoji Menu"));

        const heart = getHeartStyle(player);
        const lettersSet = new Set(
            emojis.map(e => {
                const char = e.displayName[0]?.toUpperCase() ?? "#";
                return /[A-Z]/.test(char) ? char : "#";
            })
        );

        const letters = Array.from(lettersSet).sort();

        form.button(getFormattedText(player, showCount ? `${heart} Favorites (${favs.length}/${MAX_FAVORITES})` : `${heart} Favorites`));
        form.button(getFormattedText(player, " Settings"));

        for (const letter of letters) {
            form.button(getFormattedText(player, letter));
        }

        form.show(player).then(r => {
            if (r.canceled) return;

            const choice = r.selection;
            if (choice === 0) return showFavorites(player);
            if (choice === 1) return showSettings(player);
            return showLetterCategory(player, letters[choice - 2]);
        });
    }
    showMainMenu(player);
}

export const uiScript = {
    Code: {
        execute() {
            function showWelcomeBookForm(player) {
                const deathNoteForm = new ActionFormData()
                    .title("  §lWelcome Book  ")
                    .body("Welcome to §b§lHorrfic Housing!§r\n\nHere a bunch of random things happen that YOU must be on the lookout for!\n\nThe game will start and you will spawn at your very own platform with a house, those are called 'plates`\n\nVarious events will happen during the game that are either aimed at killing you or are pure jokes\n\nYou can vote for gamemodes before the start of each round by using the respective item that represents the gamemode you want to play!\n\nGamemodes change how the game is played by modifying the play area or add modifiers like the events happening faster or if you die something happens\n\nCoins can be used to customize your plate however you like OR to customize your appearance with cool particles!\n\nYou can also do !emojis to use the emojis that Me and Marshmallow have added :P\n\nIf you are CookieScript pls spare me bro \n\nEnjoy your stay!\n\nThis is the dude who made the map btw:\n\n\n\n\n\n\n\n\n\n\n")
                    .button("  ")
                    .button(" ")
                    .button(" ")
                    .button(" ")
                deathNoteForm.show(player).then((response) => {
                    if (response.selection >= "0") {
                        showWelcomeBookForm(player)
                    }
                });
            }

            world.afterEvents.itemUse.subscribe((event) => {
                const itemStack = event.itemStack;
                const player = event.source;

                if (itemStack.typeId === "brr:hello") {
                    showWelcomeBookForm(player);
                }
            })
        }
    }
};
