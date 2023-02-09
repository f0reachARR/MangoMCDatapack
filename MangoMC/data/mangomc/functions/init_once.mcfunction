# スコアボード初期化
scoreboard objectives add DeathEvent deathCount {"text":"イベント: 死亡"}
scoreboard objectives add RespawnEvent custom:time_since_death {"text":"イベント: リスポーン"}
scoreboard objectives add ClickCarrotEvent used:carrot_on_a_stick {"text":"イベント: 人参棒使用"}
scoreboard objectives add TorchUseEvent used:torch {"text":"イベント: トーチ使用"}
scoreboard objectives add x dummy {"text":"自分の位置(X)"}
scoreboard objectives add y dummy {"text":"自分の位置(Y)"}
scoreboard objectives add z dummy {"text":"自分の位置(Z)"}
scoreboard objectives add Const dummy {"text":"定数"}
scoreboard objectives add Temp dummy {"text":"変数"}

scoreboard players set $0 Const 0
scoreboard players set $1 Const 1
scoreboard players set $5 Const 5
scoreboard players set $9 Const 9
scoreboard players set $27 Const 27
scoreboard players set $-64 Const -64
scoreboard players set $Temp1 Temp 0
scoreboard players set $Temp2 Temp 0
scoreboard players set $Temp3 Temp 0

# 初期化済みフラグ
data modify storage mangomc: Initialized set value "ok"