import * as mc from "@minecraft/server";

export const lifeLinkExtras = {
    Code: {
        execute: () => {
            mc.world.afterEvents.entityDie.subscribe((event) => {
                let deadPlayer = event.deadEntity;
                if (!(deadPlayer instanceof mc.Player)) return;

                let score = getScore(deadPlayer, "life_link");
                if (score === 0) return;

                for (let player of mc.world.getPlayers()) {
                    if (player !== deadPlayer && getScore(player, "life_link") === score) {
                        player.kill();
                    }
                }
            });

            mc.system.runInterval(() => {
                let scoreboard = mc.world.scoreboard;
                let objective = scoreboard.getObjective("life_link");
                if (!objective) return;

                let particles = ["red_heart", "orange_heart", "yellow_heart", "green_heart", "blue_heart", "purple_heart"];

                let linkedGroups = new Map();
                for (let player of mc.world.getPlayers()) {
                    let score = objective.getScore(player);
                    if (score > 0) {
                        if (!linkedGroups.has(score)) linkedGroups.set(score, []);
                        linkedGroups.get(score).push(player);
                    }
                }

                for (let [score, players] of linkedGroups.entries()) {
                    let particle = particles[(score - 1) % particles.length];

                    for (let i = 0; i < players.length; i++) {
                        for (let j = i + 1; j < players.length; j++) {
                            spawnParticleBetween(players[i], players[j], particle);
                        }
                    }
                }
            }, 20); // Runs every second

            function spawnParticleBetween(p1, p2, particle) {
                let steps = 10;
                for (let i = 0; i <= steps; i++) {
                    let x = p1.location.x + ((p2.location.x - p1.location.x) * i) / steps;
                    let y = p1.location.y + ((p2.location.y - p1.location.y) * i) / steps;
                    let z = p1.location.z + ((p2.location.z - p1.location.z) * i) / steps;
                    mc.world.getDimension("overworld").spawnParticle(particle, { x, y, z });
                }
            }

            function getScore(player, objective) {
                let scoreboard = mc.world.scoreboard;
                let obj = scoreboard.getObjective(objective);
                return obj?.getScore(player) ?? 0;
            }
        }
    }
};
