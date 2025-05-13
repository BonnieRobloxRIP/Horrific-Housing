import { world, system } from '@minecraft/server';
import { ModalFormData } from "@minecraft/server-ui";

// Tags that get removed when using the antidote item
const antidoteClearTags = [
  "chill", "game_ring", "invisible", "subspace", "blackhole", "speed", "1minute",
  "jump", "health", "murderer", "deathnote", "assassin", "target", "gravity",
  "miner", "lightbulb"
];

// Voting items (gamemode votes)
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

// this is where you map item types to the functions they should trigger, this is WAY shorter than repeating a bazillion if statements
const itemActions = {
  "brr:spectate": "function items/spectate",
  "brr:game_stop": "function items/stop",
  "brr:store": "function items/store",
  "brr:inventory": "function items/inventory/inventory",
  "brr:home_page": "function items/inventory/home_page",
  "brr:store_colors": "function items/inventory/colors",
  "brr:store_colors1": "function items/inventory/colors",
  "brr:store_ornaments": "function items/inventory/ornaments",
  "brr:store_ornaments1": "function items/inventory/ornaments",
  "brr:store_particles": "function items/inventory/particles",
  "brr:store_particles1": "function items/inventory/particles",
  "brr:store_perks1": "function items/inventory/perks",
  "brr:store_tags": "function items/inventory/tags",
  "brr:store_tags1": "function items/inventory/tags",
  "brr:game_start": "function items/start",
  // Color items
  "brr:color_red": "function items/inventory/colors/red",
  "brr:color_blue": "function items/inventory/colors/blue",
  "brr:color_pink": "function items/inventory/colors/pink",
  "brr:color_green": "function items/inventory/colors/green",
  "brr:color_yellow": "function items/inventory/colors/yellow",
  "brr:color_orange": "function items/inventory/colors/orange",
  "brr:color_purple": "function items/inventory/colors/purple",
  "brr:color_white": "function items/inventory/colors/white",
  "brr:color_black": "function items/inventory/colors/black",
  "brr:color_gray": "function items/inventory/colors/gray",
  "brr:color_magenta": "function items/inventory/colors/magenta",
  "brr:color_light_blue": "function items/inventory/colors/light_blue",
  "brr:color_rgb": "function items/inventory/colors/rgb",
  // Tags
  "brr:tag_lover": "function items/inventory/tags/lover",
  "brr:tag_og": "function items/inventory/tags/og",
  "brr:tag_winner": "function items/inventory/tags/winner",
  "brr:tag_bunny": "function items/inventory/tags/bunny",
  "brr:tag_cat": "function items/inventory/tags/cat",
  // Particles
  "brr:particle_purple_ring": "function items/inventory/particles/purple_ring",
  "brr:particle_blue_flame": "function items/inventory/particles/blue_flame",
  "brr:particle_green_sphere": "function items/inventory/particles/green_sphere",
  "brr:particle_red_trail": "function items/inventory/particles/red_trail",
  "brr:particle_fire_ring": "function items/inventory/particles/fire_ring",
  // Ornaments
  "brr:ornament_pot": "function items/inventory/ornaments/pot",
  "brr:ornament_lamp": "function items/inventory/ornaments/lamp",
  "brr:ornament_crane": "function items/inventory/ornaments/crane",
  "brr:ornament_farm_bales": "function items/inventory/ornaments/farm_bales",
  "brr:ornament_tree": "function items/inventory/ornaments/tree",
  "brr:ornament_carpet": "function items/inventory/ornaments/carpet",
  "brr:ornament_bonnie_plush": "function items/inventory/ornaments/bonnie_plush",
  "brr:ornament_ring": "function items/inventory/ornaments/ring",
  "brr:ornament_alastor_plush": "function items/inventory/ornaments/alastor_plush",
  "brr:ornament_springtrap_plush": "function items/inventory/ornaments/springtrap_plush",
  "brr:ornament_seal_plush": "function items/inventory/ornaments/seal_plush",
  "brr:ornament_construction_site": "function items/inventory/ornaments/construction_site",
  "brr:ornament_yeeter": "function items/inventory/ornaments/yeeter",
  "brr:ornament_bushes": "function items/inventory/ornaments/bushes",
  "brr:ornament_snowy": "function items/inventory/ornaments/snowy",
  "brr:ornament_banana": "function items/inventory/ornaments/banana",
  "brr:ornament_sans_plush": "function items/inventory/ornaments/sans_plush",
  "brr:ornament_fan": "function items/inventory/ornaments/fan",
  "brr:ornament_mcdonalds_sign": "function items/inventory/ornaments/mcdonalds_sign",
  "brr:ornament_horns": "function items/inventory/ornaments/horns",
  "brr:ornament_melodie_plush": "function items/inventory/ornaments/melodie_plush",
  "brr:ornament_janet_plush": "function items/inventory/ornaments/janet_plush",
};

export const itemsUseScript = {
  Code: {
    execute() {
      world.afterEvents.itemUse.subscribe(event => {
        const player = event.source;
        const id = event.itemStack.typeId;

        if (id === "brr:deathnote") {
          // this is the deathnote item — opens a UI and selects someone to kill
          if (!player.hasTag("game")) {
            player.sendMessage("§bYou may not use this item from the lobby, dummy!");
            return;
          }

          const playersInGame = world.getAllPlayers()
            .filter(p => p.hasTag("game"))
            .map(p => p.nameTag);

          const form = new ModalFormData()
            .title("§lDeath Note")
            .dropdown("\nPlayers in game:\n\n", playersInGame);

          form.show(player).then(res => {
            if (!res.formValues) return;

            const targetName = playersInGame[res.formValues[0]];
            const target = world.getAllPlayers().find(p => p.nameTag === targetName);

            if (target && target.hasTag("game")) {
              target.runCommand("tag @s add deathnote");
              target.runCommand("title @s times 200 20 0");
              target.runCommand("title @s title Death Note");
              target.runCommand("camera @s fade time 10 1 0 color 150 150 150");
              player.runCommand(`clear @s brr:deathnote 0 1`);
              world.sendMessage(`§b${player.name} §9Used the death note!`);
              system.runTimeout(() => target.kill(), 200);
            } else {
              player.sendMessage("§athat person is already resting in peace lil bro ");
            }
          }).catch(err => player.sendMessage(`§cError: ${err}`));

        } else if (itemActions[id]) {
          // run the command if it’s in our itemActions list
          player.runCommand(itemActions[id]);

        } else {
          // check if the item is a vote item and show a message if it is
          for (let vote of voteItems) {
            if (vote.item === id) {
              player.sendMessage(`§aYou have voted for the §l${vote.displayName}§r§a gamemode!`);
              player.runCommand(vote.command);
              break;
            }
          }
        }
      });

      world.afterEvents.itemCompleteUse.subscribe(event => {
        const player = event.source;
        const id = event.itemStack.typeId;

        // Antidote item removes effects and resets health
        if (id === "brr:antidote") {
          player.getComponent("minecraft:health")?.resetToMaxValue();
          player.runCommand("clear @s");

          for (const tag of player.getTags()) {
            if (antidoteClearTags.includes(tag)) player.removeTag(tag);
          }

          player.runCommand("camera @s fade time 1 2 1 color 0 0 0");
          world.getDimension("overworld").spawnParticle("minecraft:brr:green_circle", player.location);
        }

        // Banana — boosts your stats
        if (id === "brr:banana") {
          player.addEffect("minecraft:regeneration", 300, { amplifier: 10, showParticles: true });
          player.addEffect("minecraft:health_boost", 300, { amplifier: 2, showParticles: true });
          player.addEffect("minecraft:jump_boost", 300, { amplifier: 6, showParticles: true });
        }

        // Burger — lots of healing, but slow
        if (id === "brr:burger") {
          player.addEffect("minecraft:regeneration", 300, { amplifier: 250, showParticles: true });
          player.addEffect("minecraft:slowness", 300, { amplifier: 2, showParticles: true });
          player.addEffect("minecraft:resistance", 300, { amplifier: 250, showParticles: true });
        }

        // Taco — quick little heal
        if (id === "brr:taco") {
          player.addEffect("minecraft:instant_health", 20, { amplifier: 1, showParticles: true });
        }
      });
    }
  }
};
