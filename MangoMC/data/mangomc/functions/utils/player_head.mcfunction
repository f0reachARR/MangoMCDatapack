# 管理領域にコウモリ召喚
summon bat -20 118 27 {NoAI:1b,NoGravity:1b,Tags:["PlayerHeadVictim"],DeathLootTable:"mangomc:player_head"}
# lootコマンドでうまくやる
execute as @s positioned -20 118 27 run loot spawn -20 118 27 kill @e[tag=PlayerHeadVictim,limit=1,distance=..1,sort=nearest]
# コウモリのLootTableを戻す
execute as @s positioned -20 118 27 run data remove entity @e[tag=PlayerHeadVictim,limit=1,distance=..1,sort=nearest] DeathLootTable
# コウモリを殺す
execute as @s positioned -20 118 27 run kill @e[tag=PlayerHeadVictim,limit=1,distance=..1,sort=nearest]
# ストレージに移動
execute as @s positioned -20 118 27 run data modify storage mangomc: PlayerHead set from entity @e[type=item,limit=1,distance=..1,sort=nearest] Item
# ドロップを消す
execute as @s positioned -20 118 27 run kill @e[type=item,limit=1,distance=..1,sort=nearest]