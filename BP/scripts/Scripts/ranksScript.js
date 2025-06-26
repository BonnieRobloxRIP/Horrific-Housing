import { world, system } from '@minecraft/server';
import { showEmojiMenu, setEmojis } from './UI/emojiMenuScript.js';
import { showStatsMenu } from './UI/statsMenuScript.js';

export const emojis = [
    { id: ":skull:", emoji: "", displayName: "Skull" },
    { id: ":pray:", emoji: "", displayName: "Pray" },
    { id: ":hh:", emoji: "", displayName: "Horrific housing" },
    { id: ":fire:", emoji: "", displayName: "Fire" },
    { id: ":coins:", emoji: "", displayName: "Coins" },
    { id: ":crane:", emoji: "", displayName: "Crane" },
    { id: ":bonnie:", emoji: "", displayName: "Bonnie" },
    { id: ":taco:", emoji: "", displayName: "Taco" },
    { id: ":subspace_taco:", emoji: "", displayName: "Subspace Taco" },
    { id: ":crown:", emoji: "", displayName: "Crown" },
    { id: ":ok:", emoji: "", displayName: "OK" },
    { id: ":speaking_head:", emoji: "", displayName: "Speaking Head" },
    { id: ":lil_john:", emoji: "", displayName: "Lil John" },
    { id: ":ice:", emoji: "", displayName: "Ice" },
    { id: ":deathnote:", emoji: "", displayName: "Deathnote" },
    { id: ":meteor:", emoji: "", displayName: "Meteor" },
    { id: ":nuke:", emoji: "", displayName: "Nuke" },
    { id: ":train:", emoji: "", displayName: "Train" },
    { id: ":lightning:", emoji: "", displayName: "Lightning" },
    { id: ":microwave:", emoji: "", displayName: "Microwave" },
    { id: ":amogus:", emoji: "", displayName: "Amogus" },
    { id: ":not_stonks:", emoji: "", displayName: "Not Stonks" },
    { id: ":subspace_tripmine:", emoji: "", displayName: "Subspace Tripmine" },
    { id: ":landmine:", emoji: "", displayName: "Landmine" },
    { id: ":skull_cry:", emoji: "", displayName: "Skull Cry" },
    { id: ":thumbs_up:", emoji: "", displayName: "Thumbs Up" },
    { id: ":thumbs_down:", emoji: "", displayName: "Thumbs Down" },
    { id: ":classic:", emoji: "", displayName: "Classic" },
    { id: ":blast:", emoji: "", displayName: "Blast" },
    { id: ":rapid:", emoji: "", displayName: "Rapid" },
    { id: ":stud:", emoji: "", displayName: "Stud" },
    { id: ":oneplate:", emoji: "", displayName: "One Plate" },
    { id: ":scattered:", emoji: "", displayName: "Scattered" },
    { id: ":lava:", emoji: "", displayName: "Lava" },
    { id: ":spleef:", emoji: "", displayName: "Spleef" },
    { id: ":line:", emoji: "", displayName: "Line" },
    { id: ":town:", emoji: "", displayName: "Town" },
    { id: ":ring:", emoji: "", displayName: "Ring" },
    { id: ":sweeper:", emoji: "", displayName: "Sweeper" },
    { id: ":twoplates:", emoji: "", displayName: "Two Plates" },
    { id: ":murdertown:", emoji: "", displayName: "Murder Town" },
    { id: ":sloweddown:", emoji: "", displayName: "Slowed Down" },
    { id: ":gear:", emoji: "", displayName: "Gear" },
    { id: ":hotel:", emoji: "", displayName: "Hotel" },
    { id: ":islands:", emoji: "", displayName: "Islands" },
    { id: ":cloud:", emoji: "", displayName: "Cloud" },
    { id: ":soda:", emoji: "", displayName: "Soda" },
    { id: ":red_soda:", emoji: "", displayName: "Red Soda" },
    { id: ":wolf:", emoji: "", displayName: "Wolf" },
    { id: ":cat:", emoji: "", displayName: "Cat" },
    { id: ":fox:", emoji: "", displayName: "Fox" },
    { id: ":titanic:", emoji: "", displayName: "Titanic" },
    { id: ":bunny:", emoji: "", displayName: "Bunny" },
    { id: ":wave:", emoji: "", displayName: "Wave" },
    { id: ":left:", emoji: "", displayName: "Left" },
    { id: ":down:", emoji: "", displayName: "Down" },
    { id: ":up:", emoji: "", displayName: "Up" },
    { id: ":right:", emoji: "", displayName: "Right" },
    { id: ":axolotl:", emoji: "", displayName: "Axolotl" },
    { id: ":frog:", emoji: "", displayName: "Frog" },
    { id: ":gun:", emoji: "", displayName: "Gun" },
    { id: ":panda:", emoji: "", displayName: "Panda" },
    { id: ":duck:", emoji: "", displayName: "Duck" },
    { id: ":parrot:", emoji: "", displayName: "Parrot" },
    { id: ":discord:", emoji: "", displayName: "Discord" },
    { id: ":bonnie_stare:", emoji: "", displayName: "Bonnie Stare" },
    { id: ":sip:", emoji: "", displayName: "Sip" },
    { id: ":cactus:", emoji: "", displayName: "Cactus" },
    { id: ":tree:", emoji: "", displayName: "Tree" },
    { id: ":win:", emoji: "", displayName: "Win" },
    { id: ":plant:", emoji: "", displayName: "Plant" },
    { id: ":bread:", emoji: "", displayName: "Bread" },
    { id: ":technoblade:", emoji: "", displayName: "Technoblade" },
    { id: ":bee:", emoji: "", displayName: "Bee" },
    { id: ":wah:", emoji: "", displayName: "Wah" },
    { id: ":doggo:", emoji: "", displayName: "Doggo" },
    { id: ":happy:", emoji: "", displayName: "Happy" },
    { id: ":dollar:", emoji: "", displayName: "Dollar" },
    { id: ":sandwich:", emoji: "", displayName: "Sandwich" },
    { id: ":test:", emoji: "", displayName: "Test" },
    { id: ":white_pigeon:", emoji: "", displayName: "White Pigeon" },
    { id: ":marsh:", emoji: "", displayName: "Marsh" },
    { id: ":couldron:", emoji: "", displayName: "Couldron" },
    { id: ":bat:", emoji: "", displayName: "Bat" },
    { id: ":candy:", emoji: "", displayName: "Candy" },
    { id: ":candy_heart:", emoji: "", displayName: "Candy Heart" },
    { id: ":grave:", emoji: "", displayName: "Grave" },
    { id: ":ghost:", emoji: "", displayName: "Ghost" },
    { id: ":pumpkin:", emoji: "", displayName: "Pumpkin" },
    { id: ":pie:", emoji: "", displayName: "Pie" },
    { id: ":knife:", emoji: "", displayName: "Knife" },
    { id: ":spookycat:", emoji: "", displayName: "Spooky Cat" },
    { id: ":alien:", emoji: "", displayName: "Alien" },
    { id: ":crow:", emoji: "", displayName: "Crow" },
    { id: ":ice_cream:", emoji: "", displayName: "Ice Cream" },
    { id: ":sad:", emoji: "", displayName: "Sad" },
    { id: ":laugh:", emoji: "", displayName: "Laugh" },
    { id: ":cool:", emoji: "", displayName: "Cool" },
    { id: ":moyai:", emoji: "", displayName: "Moyai" },
    { id: ":penguin:", emoji: "", displayName: "Penguin" },
    { id: ":popcorn:", emoji: "", displayName: "Popcorn" },
    { id: ":hammer:", emoji: "", displayName: "Hammer" },
    { id: ":robot:", emoji: "", displayName: "Robot" },
    { id: ":laundry:", emoji: "", displayName: "Laundry" },
    { id: ":star:", emoji: "", displayName: "Star" },
    { id: ":witch:", emoji: "", displayName: "Witch" },
    { id: ":spider:", emoji: "", displayName: "Spider" },
    { id: ":pot:", emoji: "", displayName: "Pot" },
    { id: ":lamp:", emoji: "", displayName: "Lamp" },
    { id: ":farmbales:", emoji: "", displayName: "Farm Bales" },
    { id: ":tree_ornament:", emoji: "", displayName: "Tree Ornament" },
    { id: ":carpet:", emoji: "", displayName: "Carpet" },
    { id: ":construction_site:", emoji: "", displayName: "Construction Site" },
    { id: ":yeeter:", emoji: "", displayName: "Yeeter" },
    { id: ":bushes:", emoji: "", displayName: "Bushes" },
    { id: ":snowy:", emoji: "", displayName: "Snowy" },
    { id: ":banana_ornament:", emoji: "", displayName: "Banana Ornament" },
    { id: ":sans:", emoji: "", displayName: "Sans" },
    { id: ":fan:", emoji: "", displayName: "Fan" },
    { id: ":mcdonalds:", emoji: "", displayName: "Mcdonalds" },
    { id: ":horns:", emoji: "", displayName: "Horns" },
    { id: ":melodie:", emoji: "", displayName: "Melodie" },
    { id: ":janet:", emoji: "", displayName: "Janet" },
    { id: ":halloween_theme:", emoji: "", displayName: "Halloween Theme" },
    { id: ":carved_pumpkin:", emoji: "", displayName: "Carved Pumpkin" },
    { id: ":engine:", emoji: "", displayName: "Engine" },
    { id: ":ufo:", emoji: "", displayName: "UFO" },
    { id: ":tropical_island:", emoji: "", displayName: "Tropical Island" },
    { id: ":yippie:", emoji: "", displayName: "Yippie" },
    { id: ":stonks:", emoji: "", displayName: "Stonks" },
    { id: ":antidote:", emoji: "", displayName: "Antidote" },
    { id: ":stack:", emoji: "", displayName: "Stack" },
    { id: ":heist:", emoji: "", displayName: "Heist" },
    { id: ":subspace:", emoji: "", displayName: "Subspace" },
    { id: ":subspace_town:", emoji: "", displayName: "Subspace Town" },
    { id: ":purple_ring:", emoji: "", displayName: "Purple Ring" },
    { id: ":blue_flame:", emoji: "", displayName: "Blue Flame" },
    { id: ":banana:", emoji: "", displayName: "Banana" },
    { id: ":subspace_soda:", emoji: "", displayName: "Subspace Soda" },
    { id: ":bonnie_plush:", emoji: "", displayName: "BonnieRobloxRIP Plush" },
    { id: ":ring_ornament:", emoji: "", displayName: "Ring Ornament" },
    { id: ":springtrap_plush:", emoji: "", displayName: "Springtrap Plush" },
    { id: ":alastor_plush:", emoji: "", displayName: "Alastor Plush" },
    { id: ":seal_plush:", emoji: "", displayName: "Seal Plush" },
    { id: ":world_trade_center:", emoji: "", displayName: "World Trade Center" },
    { id: ":baby_fox:", emoji: "", displayName: "Bany Fox" },
    { id: ":bed:", emoji: "", displayName: "Bed" },
    { id: ":bell:", emoji: "", displayName: "Bell" },
    { id: ":bms:", emoji: "", displayName: "Black Mesa" },
    { id: ":bouquet:", emoji: "", displayName: "Bouquet" },
    { id: ":hamburger:", emoji: "", displayName: "Hambuger" },
    { id: ":alert:", emoji: "", displayName: "Alert" },
    { id: ":bulgaria:", emoji: "", displayName: "Bulgaria" },
    { id: ":candy_cane:", emoji: "", displayName: "Candy Cane" },
    { id: ":car:", emoji: "", displayName: "Car" },
    { id: ":catblobhug:", emoji: "", displayName: "CatBlobHug" },
    { id: ":cheeseburger:", emoji: "", displayName: "Cheeseburger" },
    { id: ":christmas_bunny:", emoji: "", displayName: "Christmas Bunny" },
    { id: ":christmas_lights:", emoji: "", displayName: "Christmas Lights" },
    { id: ":christmas_tree:", emoji: "", displayName: "Christmas Tree" },
    { id: ":christmas_wreath:", emoji: "", displayName: "Christmas Wreath" },
    { id: ":clock:", emoji: "", displayName: "Clock" },
    { id: ":creeper:", emoji: "", displayName: "Creeper" },
    { id: ":dispatcher:", emoji: "", displayName: "Dispatcher" },
    { id: ":firework:", emoji: "", displayName: "Firework" },
    { id: ":friendly_campfire:", emoji: "", displayName: "Friendly Campfire" },
    { id: ":gingerbread_man:", emoji: "", displayName: "Gingerbread Man" },
    { id: ":grave_digger:", emoji: "", displayName: "Grave Digger" },
    { id: ":heart_on_fire:", emoji: "", displayName: "Heart on Fire" },
    { id: ":heartpulse:", emoji: "", displayName: "HeartPulse" },
    { id: ":heart_hands:", emoji: "", displayName: "Heart Hands" },
    { id: ":hot_chocolate:", emoji: "", displayName: "Hot Chocolate" },
    { id: ":kissing_face:", emoji: "", displayName: "Kissing Face" },
    { id: ":lambda:", emoji: "", displayName: "Lambda" },
    { id: ":frown:", emoji: "", displayName: "Frown" },
    { id: ":laugh_out_loud:", emoji: "", displayName: "Laugh out Loud" },
    { id: ":milk:", emoji: "", displayName: "Milk" },
    { id: ":christmas_ornament:", emoji: "", displayName: "Christmas Ornament" },
    { id: ":owl:", emoji: "", displayName: "Owl" },
    { id: ":phone:", emoji: "", displayName: "Phone" },
    { id: ":present:", emoji: "", displayName: "Present" },
    { id: ":present2:", emoji: "", displayName: "Present 2" },
    { id: ":crystal:", emoji: "", displayName: "Crystal" },
    { id: ":reindeer:", emoji: "", displayName: "Reindeer" },
    { id: ":ring2:", emoji: "", displayName: "Ring" },
    { id: ":santa:", emoji: "", displayName: "Santa" },
    { id: ":sleigh:", emoji: "", displayName: "Sleigh" },
    { id: ":snowglobe:", emoji: "", displayName: "Snowglobe" },
    { id: ":snowball:", emoji: "", displayName: "Snowball" },
    { id: ":snowflake:", emoji: "", displayName: "Snowflake" },
    { id: ":snowman:", emoji: "", displayName: "Snowman" },
    { id: ":strawberry:", emoji: "", displayName: "Strawberry" },
    { id: ":strawberry_cheesecake:", emoji: "", displayName: "Strawberry Cheesecake" },
    { id: ":smiling_face_with_3_hearts:", emoji: "", displayName: "Smiling Face with 3 Hearts" },
    { id: ":tomato:", emoji: "", displayName: "Tomato" },
    { id: ":2_hearts:", emoji: "", displayName: "2 Hearts" },
    { id: ":blue_heart:", emoji: "", displayName: "Blue Heart" },
    { id: ":orange_heart:", emoji: "", displayName: "Orange Heart" },
    { id: ":purple_heart:", emoji: "", displayName: "Purple Heart" },
    { id: ":red_heart:", emoji: "", displayName: "Red Heart" },
    { id: ":waa:", emoji: "", displayName: "Waa" },
    { id: ":usa:", emoji: "", displayName: "USA" },
    { id: ":subspace_plant:", emoji: "", displayName: "Subspace Plant" },
    { id: ":cat2:", emoji: "", displayName: "Cat 2" },
    { id: ":cat3:", emoji: "", displayName: "Cat 3" },
    { id: ":cat4:", emoji: "", displayName: "Cat 4" },
    { id: ":cat5:", emoji: "", displayName: "Cat 5" },
    { id: ":cat6:", emoji: "", displayName: "Cat 6" },
    { id: ":cat7:", emoji: "", displayName: "Cat 7" },
    { id: ":cat8:", emoji: "", displayName: "Cat 8" },
    { id: ":rabbit:", emoji: "", displayName: "Rabbit" },
    { id: ":rabbit2:", emoji: "", displayName: "Rabbit 2" },
    { id: ":rabbit3:", emoji: "", displayName: "Rabbit 3" },
    { id: ":rabbit4:", emoji: "", displayName: "Rabbit 4" },
    { id: ":rabbit5:", emoji: "", displayName: "Rabbit 5" },
    { id: ":rabbit6:", emoji: "", displayName: "Rabbit 6" }
]

setEmojis(emojis); // so emojiMenuScript can use the emojis list

export function sendRankedMessage(player, rawMessage) {
    const tags = player.getTags();
    let message = rawMessage;
    let rankPrefix = "";

    for (const emoji of emojis) {
        message = message.replaceAll(emoji.id, emoji.emoji);
    }

    // Dev ranks
    if (player.name === "BonnieRobloxRIP") rankPrefix += " ";
    if (player.name === "Marshmallow997") rankPrefix += " ";

    if (["BonnieRobloxRIP", "Marshmallow997"].includes(player.name)) {
        rankPrefix += "[§l§dDev§r] ";
    }

    {
        // Tags
        if (tags.includes("tag_og")) rankPrefix += "[ §l§2OG§r] ";
        if (tags.includes("tag_lover")) rankPrefix += "[ §l§dLover§r] ";
        if (tags.includes("tag_winner")) rankPrefix += "[§l§bWinner§r] ";
        if (tags.includes("tag_bunny")) rankPrefix += "[§fBunny§r] ";
        if (tags.includes("tag_cat")) rankPrefix += "[§fCat§r] ";

        if (tags.includes("game")) {
            rankPrefix += "[§l§aGamer§r] ";
        } else {
            rankPrefix += "[§l§bLobby§r] ";
        }

        const text = `§r${rankPrefix}§r${player.name}: §f${message}`;
        world.sendMessage({ rawtext: [{ text: text }] });
    }
}

export const ranksScript = {
    Code: {
        execute() {
            // Chat tag and emoji thing
            world.beforeEvents.chatSend.subscribe((data) => {
                const player = data.sender;
                const tags = player.getTags();
                let message = data.message;
                let rankPrefix = "";

                if (message.toLowerCase() === "!emojis") {
                    data.cancel = true;
                    player.sendMessage("§eExit the chat window to see the emoji list!");
                    system.runTimeout(() => showEmojiMenu(player), 60);
                    return;
                }
                if (message === "!stats") {
                    data.cancel = true;
                    player.sendMessage("§eExit the chat window to see the stats menu!");
                    system.runTimeout(() => showStatsMenu(player), 60);
                    return;
                }

                for (const emoji of emojis) {
                    message = message.replaceAll(emoji.id, emoji.emoji);
                }

                // Dev ranks (chat)
                if (player.name === "BonnieRobloxRIP") rankPrefix += " ";
                if (player.name === "Marshmallow997") rankPrefix += " ";

                if (["BonnieRobloxRIP", "Marshmallow997"].includes(player.name)) {
                    rankPrefix += "[§l§dDev§r] ";
                }

                // Tags (chat)
                {
                    if (tags.includes("tag_og")) rankPrefix += "[ §l§2OG§r] ";
                    if (tags.includes("tag_lover")) rankPrefix += "[ §l§dLover§r] ";
                    if (tags.includes("tag_winner")) rankPrefix += "[§l§bWinner§r] ";
                    if (tags.includes("tag_bunny")) rankPrefix += "[§fBunny§r] ";
                    if (tags.includes("tag_cat")) rankPrefix += "[§fCat§r] ";

                    if (tags.includes("game")) {
                        rankPrefix += "[§l§aGamer§r] ";
                    } else {
                        rankPrefix += "[§l§bLobby§r] ";
                    }

                    const text = `§r${rankPrefix}§r${player.name}: §f${message}`;
                    world.sendMessage({ rawtext: [{ text: text }] });
                    data.cancel = true;
                }
            });

            // Nametag updater thing
            system.runInterval(() => {
                for (let player of world.getPlayers()) {
                    const tags = player.getTags();
                    let rankPrefix = "";

                    if (player.name === "BonnieRobloxRIP") rankPrefix += " ";
                    if (player.name === "Marshmallow997") rankPrefix += " ";

                    const playerNames = world.getPlayers().map(p => p.name);
                    const bothDevsOnline = playerNames.includes("BonnieRobloxRIP") && playerNames.includes("Marshmallow997");

                    if (["BonnieRobloxRIP", "Marshmallow997"].includes(player.name)) {
                        if (bothDevsOnline) {
                            rankPrefix += " ";
                        }
                        rankPrefix += "[§l§dDev§r] ";
                    }

                    {
                        if (tags.includes("tag_og")) rankPrefix += "[ §2§lOG§r] ";
                        if (tags.includes("tag_lover")) rankPrefix += "[§r] ";
                        if (tags.includes("tag_winner")) rankPrefix += "[§b§lWinner§r] ";
                        if (tags.includes("tag_bunny")) rankPrefix += "[§fBunny§r] ";
                        if (tags.includes("tag_cat")) rankPrefix += "[§fCat§r] ";

                        if (tags.includes("game")) {
                            rankPrefix += "[§l§aGamer§r] ";
                        } else {
                            rankPrefix += "[§l§bLobby§r] ";
                        }

                        player.nameTag = `${rankPrefix}${player.name}`;
                    }
                }
            })
        }
    }
}
