#!/usr/bin/bash
cd "$(dirname "$0")"
OUT='common/assets/minecraft/lang/en_us.json'
SRC=~/Documents/Minecraft/Resource\ Packs/MC-1.14/assets/minecraft/lang/en_us.json
cat "${SRC}" | grep -E "{|[Ff]lint|[Bb]ow|[Ss]tick" | grep -E --invert-match "[Bb]owl|Projectile\:|debug|Piston" | sed "s/ bow and arrow/ raygun/" | sed "s/Flint and Steel/Pocket Laser/" | sed "s/Crossbow/Plasma Cannon/" | sed "s/ crossbow/ plasma cannon/" | sed "s/Bow/Raygun/" | sed "s/Flint/Laser Crystal/" | sed "s/Arrow/Laserbolt/" | sed "s/Stick/Carbon Rod/" > ${OUT}
echo '"_":"_" }' >> ${OUT}
