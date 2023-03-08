# 花火召喚
execute positioned as @e[tag=SakamoWedding] rotated -30 0 run function mangomc:happy_sakamo/firework
# ループ
execute if score $WeddingLoop Temp > $0 Const run schedule function mangomc:happy_sakamo/firework_boot 20t