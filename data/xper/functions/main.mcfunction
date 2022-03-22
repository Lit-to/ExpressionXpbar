execute store result score xp xper run data get entity @s XpLevel
scoreboard players set 100 xper 100
#scoreboard players set set xper 10000
xp set @s 1130 levels
xp set @s 0 points
scoreboard players operation st xper *= 100 xper
function xper:xp/repeat
scoreboard players operation st xper = xp xper
xp set @s 0 levels
function xper:xpl/repeat
scoreboard objectives remove xper

