# バンドルが取られた墓石を壊す
kill @e[tag=Gravestone,nbt=!{HandItems:[{id:"minecraft:bundle"}]}]

# 効果が切れてる墓石をOMDに移動する
execute as @e[tag=Gravestone,nbt=!{ActiveEffects:[{Id:24}]}] run function mangomc:death_item/gravestone/expire