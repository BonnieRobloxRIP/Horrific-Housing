import { world, system } from '@minecraft/server';
import { ModalFormData, ActionFormData } from "@minecraft/server-ui";

export function showEmojiList(player, emojis) {
    if (!player) return;

    player.sendMessage("§eExit the chat menu to see the emoji list"); // sends a private message

    system.runTimeout(() => { // delays for 60 ticks (or 3 seconds)
        const sortedEmojis = emojis.slice().sort((a, b) => a.displayName.localeCompare(b.displayName)); // sorts emojis alphabetically

        const emojiForm = new ModalFormData() // creates the form
            .title(" Emoji List "); // title of the form

        for (const emoji of sortedEmojis) {
            emojiForm.dropdown(
                `${emoji.emoji} ${emoji.displayName}`, // emoji + Name
                [`${emoji.id}`], // read-only text (a dropdown menu with one option)
                0 // default selection
            );
        }

        emojiForm.show(player).catch(() => { /* you can put stuff here in case there's an error with showing the UI but I'm not doing that since in my testing it never encountered an error (unless you closed the chat menu too slowly) :P*/ });
    }, 60); // 3 seconds delay (or 60 ticks)
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