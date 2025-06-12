import { ranksScript } from './Scripts/ranksScript.js';
ranksScript["Code"].execute();
import { itemsUseScript } from './Scripts/itemsUseScript.js';
itemsUseScript["Code"].execute();
import { subspaceTripmineScript } from './Scripts/subspaceTripmineScript.js';
subspaceTripmineScript["Code"].execute();
import { blockUseScript } from './Scripts/blockUseScript.js';
blockUseScript["Code"].execute();
import { welcomeBookScript } from './Scripts/UI/welcomeBookScript.js';
welcomeBookScript["Code"].execute();
import { lifeLink } from './Events/lifeLink.js';
lifeLink["Code"].execute();
import { lifeLinkExtras } from './Events/lifeLinkExtras.js';
lifeLinkExtras["Code"].execute();

import { world, system } from '@minecraft/server';

const cooldowns = {};  // To store cooldowns for players
const cooldownTime = 500;  // 0.5 second cooldown (in milliseconds)
world.beforeEvents.playerInteractWithBlock.subscribe((data) => {
    system.run(() => {
        const playerName = data.player.name;
        const currentTime = Date.now();
        if (!cooldowns[playerName] || currentTime - cooldowns[playerName] >= cooldownTime) {
            cooldowns[playerName] = currentTime;  // Update cooldown for the player
            if (data.block.typeId.includes("plush")) {
                world.getDimension("overworld").playSound("sfx.lobby.plushie", data.block.location);
                world.getDimension("overworld").spawnParticle("brr:plushie", { x: data.block.location.x + 0.5, y: data.block.location.y + 0.5, z: data.block.location.z + 0.5 });
            }
        }
    })
});
system.runInterval(() => {
    world.getAllPlayers().forEach(player => {
        if (player) {
            let block = null; // Initializes as null, not the string "null"
            try {
                block = world.getDimension("overworld").getBlock(player.location);
            } catch (e) {
            }

            if (block && block.typeId === "brr:landmine") {
                world.getDimension("overworld").createExplosion(block.location, 10, { allowUnderwater: true, breaksBlocks: false });
                world.getDimension("overworld").playSound("block.landmine", block.location);
                world.getDimension("overworld").setBlockType(block.location, "minecraft:air");
            }
        }
    });
}, 1)
