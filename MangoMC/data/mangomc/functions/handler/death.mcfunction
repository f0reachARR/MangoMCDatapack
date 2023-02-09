# 虚無からの釣り竿(回収処理)
execute as @s[tag=!KeepItems] at @s run function mangomc:death_item/death

# リセット
scoreboard players reset @s DeathEvent