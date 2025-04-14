import { world } from '@minecraft/server';

export const microwave = {
    Code: {
        execute() {
            const entityHitEvent = world.events.entityHitEntity;
            entityHitEvent.subscribe((event) => {
                const microwavedPlayer = event.damagingEntity;
                const hit = event.hitEntity;
                if (microwavedPlayer && hit && microwavedPlayer.type === 'minecraft:player' && hit.type === 'minecraft:player') {
                    if (microwavedPlayer.hasTag("microwaved")) {
                        hit.addTag("microwaved");
                        microwavedPlayer.removeTag("microwaved");
                    } else if (microwavedPlayer.hasTag("microwaved1")) {
                        hit.addTag("microwaved1");
                        microwavedPlayer.removeTag("microwaved1");
                    } else if (microwavedPlayer.hasTag("microwaved2")) {
                        hit.addTag("microwaved2");
                        microwavedPlayer.removeTag("microwaved2");
                    }
                }
            });
        }
    }
};
