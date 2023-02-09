# 最終死亡地点を通知する
tellraw @a ["",{"selector":"@s","color":"gold"}," died at ",{"entity":"@s","nbt":"LastDeathLocation.pos[0]","color":"blue"},", ",{"entity":"@s","nbt":"LastDeathLocation.pos[1]","color":"blue"},", ",{"entity":"@s","nbt":"LastDeathLocation.pos[2]","color":"blue"}, " on ",{"entity":"@s","nbt":"LastDeathLocation.dimension"}]

# 資源ワールドならtpリンクを付ける
execute unless predicate mangomc:is_survival run tellraw @s ["", {"text": "Teleport", "color": "blue","clickEvent": {"action": "run_command","value": "function mangomc:handler/lastdeath_tp"}}]