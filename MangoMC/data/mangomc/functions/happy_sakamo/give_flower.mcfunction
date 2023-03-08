# 花をあげる
execute as @a[tag=SakamoWeddingPeople,tag=!SakamoWeddingGiven] run give @s azure_bluet{display:{Name:'{"text":"ヒナソウ","color":"aqua"}',Lore:['[{"text":"花言葉は「","color":"blue","bold":false},{"text":"寛大な愛","color":"blue","bold":true},{"text":"」(らしい)","color":"blue","bold":false}]','{"text":"※置いたら元の花になるよ","color":"red","bold":false}','{"text":"いつか何かに使えるようにするかも"}']},HideFlags:1,Enchantments:[{}],Mango:"SakamoFlower"} 1
# 重複防止
execute as @a[tag=SakamoWeddingPeople] run tag @s add SakamoWeddingGiven
# タグ外す
execute as @a[tag=SakamoWeddingPeople] run tag @s remove SakamoWeddingPeople