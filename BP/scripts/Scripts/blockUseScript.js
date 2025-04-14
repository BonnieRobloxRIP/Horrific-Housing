import { world, system, MolangVariableMap } from '@minecraft/server'

export const blockUseScript = {
    Code: {
        execute() {
            const cooldowns = {};  // To store cooldowns for players
            const cooldownTime = 500;  // 0.5 second cooldown (in milliseconds)
            const fanTracking = [];
            const fanParticles = new Set(); // Track active fan particles

            world.beforeEvents.playerInteractWithBlock.subscribe((data) => {
                system.run(() => {
                    const playerName = data.player.name;
                    const currentTime = Date.now();
                    if (!cooldowns[playerName] || currentTime - cooldowns[playerName] >= cooldownTime) {
                        cooldowns[playerName] = currentTime;  // Update cooldown for the player

                        if (data.block.typeId.includes("plush")) {
                            world.getDimension("overworld").playSound("sfx.lobby.plushie", data.block.location);
                            world.getDimension("overworld").spawnParticle("brr:plushie", {
                                x: data.block.location.x + 0.5,
                                y: data.block.location.y + 0.5,
                                z: data.block.location.z + 0.5
                            });
                        }
                        if (data.block.typeId === "minecraft:carved_pumpkin") {
                            world.getDimension("overworld").playSound("fire.ignite", data.block.location);
                            const rot = data.block.permutation.getState("minecraft:cardinal_direction");
                            data.player.runCommandAsync(
                                `setblock ${data.block.location.x} ${data.block.location.y} ${data.block.location.z} minecraft:lit_pumpkin["minecraft:cardinal_direction"="${rot}"]`
                            );
                        }
                        if (data.block.typeId === "minecraft:lit_pumpkin") {
                            world.getDimension("overworld").playSound("extinguish.candle", data.block.location);
                            const rot = data.block.permutation.getState("minecraft:cardinal_direction");
                            data.player.runCommandAsync(
                                `setblock ${data.block.location.x} ${data.block.location.y} ${data.block.location.z} minecraft:carved_pumpkin["minecraft:cardinal_direction"="${rot}"]`
                            );
                        }
                        if (data.block.typeId === "brr:fan") {
                            const index = fanTracking.findIndex(loc => loc.x === data.block.location.x && loc.y === data.block.location.y && loc.z === data.block.location.z);

                            if (index !== -1) { // Turn the fan off
                                fanTracking.splice(index, 1);
                                fanParticles.delete(`${data.block.location.x},${data.block.location.y},${data.block.location.z}`); // Stop tracking the particles
                                world.getDimension("overworld").playSound("sfx.block.fan_off", data.block.location);
                            } else { // Turn the fan on
                                fanTracking.push(data.block.location);
                                fanParticles.add(`${data.block.location.x},${data.block.location.y},${data.block.location.z}`); // Start tracking the particles
                                world.getDimension("overworld").playSound("block.fan_on", data.block.location);
                            }
                        }
                    }
                });
            });

            system.runInterval(() => {
                for (let i = fanTracking.length - 1; i >= 0; i--) {
                    let fanLocation = fanTracking[i];
                    let block = world.getDimension("overworld").getBlock(fanLocation);

                    if (block && block.typeId === "brr:fan") {
                        world.getDimension("overworld").playSound("sfx.block.fan_hum", block.location);

                        // Only spawn particles if the fan is still active
                        if (fanParticles.has(`${block.location.x},${block.location.y},${block.location.z}`)) {
                            const molang = new MolangVariableMap();
                            molang.setSpeedAndDirection("q.target_x_rotation", 1, { x: 90, y: 0, z: 0 })
                            world.getDimension("overworld").spawnParticle("brr:fan_block1", { x: block.location.x + 0.5, y: block.location.y, z: block.location.z + 0.5 }, molang);
                            world.getDimension("overworld").spawnParticle("brr:fan_block2", { x: block.location.x + 0.5, y: block.location.y, z: block.location.z + 0.5 });
                        }
                    } else {
                        // If the block is no longer a fan, remove from tracking
                        fanTracking.splice(i, 1);
                        fanParticles.delete(`${block.location.x},${block.location.y},${block.location.z}`); // Stop tracking the particles
                    }
                }
            }, 1);
        }
    }
};
