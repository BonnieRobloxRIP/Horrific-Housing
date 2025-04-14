import { world, system } from '@minecraft/server'
import { ModalFormData } from "@minecraft/server-ui";

const antidoteClearTags = [
    "chill",
    "game_ring",
    "invisible",
    "subspace",
    "blackhole",
    "speed",
    "1minute",
    "jump",
    "health",
    "murderer",
    "deathnote",
    "assassin",
    "target",
    "gravity",
    "miner",
    "lightbulb"
];

const voteItems = [
    { item: "brr:vote_classic", command: "function vote/classic", displayName: "§bClassic" },
    { item: "brr:vote_blast", command: "function vote/blast", displayName: "§4§lBlast" },
    { item: "brr:vote_rapid", command: "function vote/rapid", displayName: "§6Rapid" },
    { item: "brr:vote_stud", command: "function vote/stud", displayName: "§7Stud" },
    { item: "brr:vote_oneplate", command: "function vote/oneplate", displayName: "§bOne Plate" },
    { item: "brr:vote_scattered", command: "function vote/scattered", displayName: "§bScattered" },
    { item: "brr:vote_lava", command: "function vote/lava", displayName: "§6Lava" },
    { item: "brr:vote_spleef", command: "function vote/spleef", displayName: "§bSpleef" },
    { item: "brr:vote_line", command: "function vote/line", displayName: "§bLine" },
    { item: "brr:vote_town", command: "function vote/town", displayName: "§bTown" },
    { item: "brr:vote_ring", command: "function vote/ring", displayName: "§bRing" },
    { item: "brr:vote_sweeper", command: "function vote/sweeper", displayName: "§dSweeper" },
    { item: "brr:vote_twoplates", command: "function vote/twoplates", displayName: "§bTwo Plates" },
    { item: "brr:vote_murdertown", command: "function vote/murdertown", displayName: "§9Murder Town" },
    { item: "brr:vote_slowed_down", command: "function vote/sloweddown", displayName: "§bSlowed Down" },
    { item: "brr:vote_gear", command: "function vote/gear", displayName: "§bGear" },
    { item: "brr:vote_hotel", command: "function vote/hotel", displayName: "§4Hotel" },
    { item: "brr:vote_islands", command: "function vote/islands", displayName: "§gIslands" },
    { item: "brr:vote_heist", command: "function vote/heist", displayName: "§7§lHeist" },
    { item: "brr:vote_stack", command: "function vote/stack", displayName: "§bStack" }
];


export const itemsUseScript = {
    Code: {
        execute() {
            world.afterEvents.itemUse.subscribe((event) => {
                const itemStack = event.itemStack;
                const player = event.source;

                if (itemStack.typeId === "brr:spectate") {
                    player.runCommandAsync("function items/spectate");
                } else if (itemStack.typeId === "brr:game_stop") {
                    player.runCommandAsync("function items/stop");
                } else if (itemStack.typeId === "brr:store") {
                    player.runCommandAsync("function items/store");
                } else if (itemStack.typeId === "brr:inventory") {
                    player.runCommandAsync("function items/inventory/inventory");
                } else if (itemStack.typeId === "brr:home_page") {
                    player.runCommandAsync("function items/inventory/home_page");
                } else if (itemStack.typeId === "brr:store_colors") {
                    player.runCommandAsync("function items/inventory/colors");
                } else if (itemStack.typeId === "brr:store_colors1") {
                    player.runCommandAsync("function items/inventory/colors");
                } else if (itemStack.typeId === "brr:store_ornaments") {
                    player.runCommandAsync("function items/inventory/ornaments");
                } else if (itemStack.typeId === "brr:store_ornaments1") {
                    player.runCommandAsync("function items/inventory/ornaments");
                } else if (itemStack.typeId === "brr:store_particles") {
                    player.runCommandAsync("function items/inventory/particles");
                } else if (itemStack.typeId === "brr:store_particles1") {
                    player.runCommandAsync("function items/inventory/particles");
                } else if (itemStack.typeId === "brr:store_perks1") {
                    player.runCommandAsync("function items/inventory/perks");
                } else if (itemStack.typeId === "brr:store_tags") {
                    player.runCommandAsync("function items/inventory/tags");
                } else if (itemStack.typeId === "brr:store_tags1") {
                    player.runCommandAsync("function items/inventory/tags");
                } else if (itemStack.typeId === "brr:color_red") {
                    player.runCommandAsync("function items/inventory/colors/red");
                } else if (itemStack.typeId === "brr:color_blue") {
                    player.runCommandAsync("function items/inventory/colors/blue");
                } else if (itemStack.typeId === "brr:color_pink") {
                    player.runCommandAsync("function items/inventory/colors/pink");
                } else if (itemStack.typeId === "brr:color_green") {
                    player.runCommandAsync("function items/inventory/colors/green");
                } else if (itemStack.typeId === "brr:color_yellow") {
                    player.runCommandAsync("function items/inventory/colors/yellow");
                } else if (itemStack.typeId === "brr:color_orange") {
                    player.runCommandAsync("function items/inventory/colors/orange");
                } else if (itemStack.typeId === "brr:color_purple") {
                    player.runCommandAsync("function items/inventory/colors/purple");
                } else if (itemStack.typeId === "brr:color_white") {
                    player.runCommandAsync("function items/inventory/colors/white");
                } else if (itemStack.typeId === "brr:color_black") {
                    player.runCommandAsync("function items/inventory/colors/black");
                } else if (itemStack.typeId === "brr:color_gray") {
                    player.runCommandAsync("function items/inventory/colors/gray");
                } else if (itemStack.typeId === "brr:color_magenta") {
                    player.runCommandAsync("function items/inventory/colors/magenta");
                } else if (itemStack.typeId === "brr:color_light_blue") {
                    player.runCommandAsync("function items/inventory/colors/light_blue");
                } else if (itemStack.typeId === "brr:color_rgb") {
                    player.runCommandAsync("function items/inventory/colors/rgb");
                } else if (itemStack.typeId === "brr:ornament_pot") {
                    player.runCommandAsync("function items/inventory/ornaments/pot");
                } else if (itemStack.typeId === "brr:ornament_lamp") {
                    player.runCommandAsync("function items/inventory/ornaments/lamp");
                } else if (itemStack.typeId === "brr:ornament_crane") {
                    player.runCommandAsync("function items/inventory/ornaments/crane");
                } else if (itemStack.typeId === "brr:ornament_farm_bales") {
                    player.runCommandAsync("function items/inventory/ornaments/farm_bales");
                } else if (itemStack.typeId === "brr:ornament_tree") {
                    player.runCommandAsync("function items/inventory/ornaments/tree");
                } else if (itemStack.typeId === "brr:ornament_carpet") {
                    player.runCommandAsync("function items/inventory/ornaments/carpet");
                } else if (itemStack.typeId === "brr:ornament_bonnie_plush") {
                    player.runCommandAsync("function items/inventory/ornaments/bonnie_plush");
                } else if (itemStack.typeId === "brr:ornament_ring") {
                    player.runCommandAsync("function items/inventory/ornaments/ring");
                } else if (itemStack.typeId === "brr:ornament_alastor_plush") {
                    player.runCommandAsync("function items/inventory/ornaments/alastor_plush");
                } else if (itemStack.typeId === "brr:ornament_springtrap_plush") {
                    player.runCommandAsync("function items/inventory/ornaments/springtrap_plush");
                } else if (itemStack.typeId === "brr:ornament_seal_plush") {
                    player.runCommandAsync("function items/inventory/ornaments/seal_plush");
                } else if (itemStack.typeId === "brr:ornament_construction_site") {
                    player.runCommandAsync("function items/inventory/ornaments/construction_site");
                } else if (itemStack.typeId === "brr:ornament_yeeter") {
                    player.runCommandAsync("function items/inventory/ornaments/yeeter");
                } else if (itemStack.typeId === "brr:ornament_bushes") {
                    player.runCommandAsync("function items/inventory/ornaments/bushes");
                } else if (itemStack.typeId === "brr:ornament_snowy") {
                    player.runCommandAsync("function items/inventory/ornaments/snowy");
                } else if (itemStack.typeId === "brr:ornament_banana") {
                    player.runCommandAsync("function items/inventory/ornaments/banana");
                } else if (itemStack.typeId === "brr:ornament_sans_plush") {
                    player.runCommandAsync("function items/inventory/ornaments/sans_plush");
                } else if (itemStack.typeId === "brr:ornament_fan") {
                    player.runCommandAsync("function items/inventory/ornaments/fan");
                } else if (itemStack.typeId === "brr:ornament_mcdonalds_sign") {
                    player.runCommandAsync("function items/inventory/ornaments/mcdonalds_sign");
                } else if (itemStack.typeId === "brr:ornament_horns") {
                    player.runCommandAsync("function items/inventory/ornaments/horns");
                } else if (itemStack.typeId === "brr:ornament_melodie_plush") {
                    player.runCommandAsync("function items/inventory/ornaments/melodie_plush");
                } else if (itemStack.typeId === "brr:ornament_janet_plush") {
                    player.runCommandAsync("function items/inventory/ornaments/janet_plush");
                } else if (itemStack.typeId === "brr:particle_purple_ring") {
                    player.runCommandAsync("function items/inventory/particles/purple_ring");
                } else if (itemStack.typeId === "brr:particle_blue_flame") {
                    player.runCommandAsync("function items/inventory/particles/blue_flame");
                } else if (itemStack.typeId === "brr:particle_green_sphere") {
                    player.runCommandAsync("function items/inventory/particles/green_sphere");
                } else if (itemStack.typeId === "brr:particle_red_trail") {
                    player.runCommandAsync("function items/inventory/particles/red_trail");
                } else if (itemStack.typeId === "brr:particle_fire_ring") {
                    player.runCommandAsync("function items/inventory/particles/fire_ring");
                } else if (itemStack.typeId === "brr:tag_lover") {
                    player.runCommandAsync("function items/inventory/tags/lover");
                } else if (itemStack.typeId === "brr:tag_og") {
                    player.runCommandAsync("function items/inventory/tags/og");
                } else if (itemStack.typeId === "brr:tag_winner") {
                    player.runCommandAsync("function items/inventory/tags/winner");
                } else if (itemStack.typeId === "brr:tag_bunny") {
                    player.runCommandAsync("function items/inventory/tags/bunny");
                } else if (itemStack.typeId === "brr:tag_cat") {
                    player.runCommandAsync("function items/inventory/tags/cat");
                } else if (itemStack.typeId === "brr:deathnote") {
                    if (player.getTags().includes("game")) {
                        // Get all players with the "game" tag and map them to their nameTags
                        const playersInGame = world.getAllPlayers()
                            .filter(p => p.hasTag("game"))
                            .map(p => p.nameTag);

                        const deathNoteForm = new ModalFormData()
                            .title("§lDeath Note")
                            .dropdown("\nPlayers in game:\n\n", playersInGame);

                        deathNoteForm
                            .show(player)
                            .then((formData) => {
                                if (formData && formData.formValues) {
                                    const selectedPlayerName = playersInGame[formData.formValues[0]];
                                    const targetPlayer = world.getAllPlayers().find(p => p.nameTag === selectedPlayerName);
                                    if (targetPlayer && targetPlayer.hasTag("game")) {
                                        targetPlayer.runCommandAsync("tag @s add deathnote")
                                        targetPlayer.runCommandAsync("title @s times 200 20 0")
                                        targetPlayer.runCommandAsync("title @s title Death Note")
                                        targetPlayer.runCommandAsync("camera @s fade time 10 1 0 color 150 150 150")
                                        player.runCommand(`clear @s brr:deathnote 0 1`);
                                        world.sendMessage(`§b${player.name} §9Used the death note!`)
                                        system.runTimeout(() => {
                                            targetPlayer.kill();
                                        }, 200);
                                    } else {
                                        player.sendMessage("§athat person is already resting in peace lil bro ");
                                    }
                                }
                            })
                            .catch((err) => player.sendMessage(`§cAn error occurred: ${err}`));
                    } else {
                        player.sendMessage("§bYou may not use this item from the lobby, dummy!");
                    }
                } else if (itemStack.typeId === "brr:game_start") {
                    player.runCommandAsync("function items/start");
                } else {
                    for (const voteItem of voteItems) {
                        if (itemStack.typeId === voteItem.item) {
                            player.sendMessage(`§aYou have voted for the §l${voteItem.displayName}§r§a gamemode!`);
                            player.runCommandAsync(voteItem.command);
                            break;
                        }
                    }
                }
            })


            world.afterEvents.itemCompleteUse.subscribe((event) => {
                if (event.itemStack.typeId === "brr:antidote") {
                    let player = event.source
                    const health = player.getComponent("minecraft:health")
                    if (health) {
                        health.resetToMaxValue();
                    }
                    let tags = player.getTags()
                    for (let tag of tags) {
                        if (antidoteClearTags.includes(tag)) {
                            player.removeTag(tag)
                        }
                    }
                    player.runCommandAsync("camera @s fade time 1 2 1 color 0 0 0")
                    world.getDimension("overworld").spawnParticle("minecraft:brr:green_circle", player.location)
                }
                if (event.itemStack.typeId === "brr:banana") {
                    let player = event.source
                    player.addEffect("minecraft:regeneration", 300, { amplifier: 10, showParticles: true })
                    player.addEffect("minecraft:health_boost", 300, { amplifier: 2, showParticles: true })
                    player.addEffect("minecraft:jump_boost", 300, { amplifier: 6, showParticles: true })
                }
                if (event.itemStack.typeId === "brr:burger") {
                    let player = event.source
                    player.addEffect("minecraft:regeneration", 300, { amplifier: 250, showParticles: true })
                    player.addEffect("minecraft:slowness", 300, { amplifier: 1, showParticles: true })
                    player.addEffect("minecraft:resistance", 300, { amplifier: 250, showParticles: true })
                }
                if (event.itemStack.typeId === "brr:taco") {
                    let player = event.source
                    player.addEffect("minecraft:instant_health", 20, { amplifier: 2, showParticles: true })
                }
            })
        }
    }
}