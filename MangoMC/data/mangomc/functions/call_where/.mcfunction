# 位置情報を記録
execute as @a store result score @s x run data get entity @s Pos[0]
execute as @a store result score @s y run data get entity @s Pos[1]
execute as @a store result score @s z run data get entity @s Pos[2]

# 実行した人に送る
execute as @a run tellraw @a[tag=This] ["", {"selector":"@s","color":"green"}," is at ",{"score":{"name":"@s","objective":"x"}},", ",{"score":{"name":"@s","objective":"y"}},", ",{"score":{"name":"@s","objective":"z"}}, " on ",{"entity":"@s","nbt":"Dimension"}]
