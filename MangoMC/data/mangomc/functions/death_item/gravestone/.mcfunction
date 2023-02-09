# 防具立てにバンドルを持たせる
summon armor_stand ~ ~ ~ {Tags:["Gravestone"],ShowArms:1b,NoBasePlate:1b,DisabledSlots:1048318,HandItems:[{id:"minecraft:bundle",Count:1b,tag:{Items:[],Enchantments:[{}]}}],ArmorItems:[{id:"minecraft:leather_boots",Count:1},{id:"minecraft:leather_leggings",Count:1},{id:"minecraft:leather_chestplate",Count:1},{}],Invulnerable:1b}
# 角度調整
tp @e[tag=Gravestone,distance=..1,limit=1] ~ ~ ~ ~ ~
# 頭ゲット
function mangomc:utils/player_head
# アイテムをセット
data modify entity @e[tag=Gravestone,distance=..0.5,limit=1] ArmorItems[3] set from storage mangomc: PlayerHead
data modify entity @e[tag=Gravestone,distance=..0.5,limit=1] HandItems[0].tag.Items set from storage mangomc: DeathInventory
# 発光効果を付ける(タイマー)
effect give @e[tag=Gravestone,distance=..0.5,limit=1] glowing 300

# 以下没収用
# プレイヤーのOMD IDを記録しておく
function oh_my_dat:please
scoreboard players operation $Temp1 Temp = @s OhMyDatID
execute store result storage mangomc: Temp int 1 run scoreboard players get @s OhMyDatID
# 防具立てのIDを得る
execute as @e[tag=Gravestone,distance=..0.5,limit=1] run function oh_my_dat:please
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].OwnerID set from storage mangomc: Temp