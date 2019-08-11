#!/usr/bin/bash
cd "$(dirname "$0")"
OUT='common/assets/minecraft/lang/en_us.json'
SRC='../../reference/MC14.en_us.json'
cat "${SRC}" | grep -E "{|[Ff]lint|[Bb]ow" | grep -E --invert-match "[Bb]owl|Projectile\:|debug|Parrot" | sed "s/ bow and arrow/ raygun/" | sed "s/Flint and Steel/Pocket Laser/" | sed "s/Crossbow/Plasma Cannon/" | sed "s/ crossbow/ plasma cannon/" | sed "s/Bow/Raygun/" | sed "s/Flint/Laser Crystal/" | sed "s/Arrow/Laserbolt/" > ${OUT}
echo '"_":"_" }' >> ${OUT}
