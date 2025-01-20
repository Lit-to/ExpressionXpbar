scoreboard objectives add xper dummy
execute store result score value xper run data get storage xper: value
execute store result score max xper run data get storage xper: max
scoreboard players set 100 xper 100



scoreboard players operation st xper = value xper
scoreboard players operation st xper *= 100 xper
scoreboard players operation st xper /= max xper
#scoreboard players operation st xper < 100 xper

#tellraw @a [{"score":{"objective": "xper","name":"st"}}]
execute if data storage xper: {type:1} run scoreboard players operation at xper = 100 xper
execute if data storage xper: {type:1} run scoreboard players operation at xper -= st xper
execute if data storage xper: {type:1} run scoreboard players operation st xper = at xper

scoreboard players reset at xper

function xper:main

