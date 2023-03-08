# メッセージ表示
execute positioned as @e[tag=SakamoWedding] rotated -45 0 run function mangomc:happy_sakamo/message
# ループ減らす
scoreboard players operation $WeddingLoop Temp -= $1 Const
# 残ってたら予約やり直し
execute if score $WeddingLoop Temp > $0 Const run schedule function mangomc:happy_sakamo/message_boot 20t