# 繰り返し用初期化
scoreboard players set $WeddingLoop Temp 5
# メッセージ表示
function mangomc:happy_sakamo/message_boot
# 花火予約
schedule function mangomc:happy_sakamo/firework_boot 10t
# お花用タグ
execute as @a[distance=..3] run tag @s add SakamoWeddingPeople
# お花予約
schedule function mangomc:happy_sakamo/give_flower 20t