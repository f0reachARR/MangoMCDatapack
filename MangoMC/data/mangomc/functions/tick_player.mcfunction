# マーク
tag @s add This

# ここのコンテキストはplayer
execute if entity @s[scores={DeathEvent=1..}] run function mangomc:handler/death

# RespawnEventはtickで増える
execute if entity @s[scores={RespawnEvent=1}] run function mangomc:handler/respawn

# 人参
execute if entity @s[scores={ClickCarrotEvent=1}] run function mangomc:handler/carrot
execute if entity @s[scores={TorchUseEvent=1}] run function mangomc:handler/torch

# マーク解除
tag @s remove This