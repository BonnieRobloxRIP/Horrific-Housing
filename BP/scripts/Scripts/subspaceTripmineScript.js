import { world, system } from '@minecraft/server'

export const subspaceTripmineScript = {
    Code: {
        execute() {
            world.afterEvents.playerPlaceBlock.subscribe((data) => {
                const blockId = data.block.typeId
                if (blockId === "brr:subspace_tripmine_block") {
                    let pos = data.block.location
                    data.player.runCommand(`summon brr:subspace_tripmine_entity ${pos.x} ${pos.y} ${pos.z}`)
                    data.player.runCommand(`setblock ${pos.x} ${pos.y} ${pos.z} air`)
                    data.player.runCommand(`title @a[tag=game] title §5§kSubspace Tripmine`)
                }
            });

            world.afterEvents.entitySpawn.subscribe((data) => {
                let entityId = data.entity.typeId
                if (entityId === "brr:subspace_tripmine_entity") {
                    let pos = data.entity.location
                    system.runTimeout(() => {
                        world.getDimension("overworld").runCommand(`execute positioned ${pos.x} ${pos.y} ${pos.z} run playanimation @e[type=brr:subspace_tripmine_entity, r=0.5] explode`)
                        system.runTimeout(() => {
                            world.getDimension("overworld").runCommand(`execute positioned ${pos.x} ${pos.y} ${pos.z} run tag @a[r=12, tag=game, tag=!spectator, tag=!duel1, tag=!duel2] add subspace1`)
                            system.runTimeout(() => {
                                world.getDimension("overworld").runCommand(`execute positioned ${pos.x} ${pos.y} ${pos.z} run tp @e[type=brr:subspace_tripmine_entity, r=1] 0 -10 0`)
                                world.getDimension("overworld").runCommand(`execute positioned 0 -10 0 run kill @e[type=brr:subspace_tripmine_entity, r=1]`)
                            }, 50);
                        }, 295);
                    }, 5);
                }
            });
        }
    }
}
