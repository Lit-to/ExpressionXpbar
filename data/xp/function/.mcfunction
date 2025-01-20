#> xp:
data modify storage xper: temp set from storage xper: max
$data modify storage xper: max set value $(max)
execute if data storage xper: {max:false} run data modify storage xper: max set from storage xper: temp
data remove storage xper: temp

$data modify storage xper: value set value $(value)

data modify storage xper: temp set from storage xper: type
$data modify storage xper: type set value $(type)
execute if data storage xper: {max:false} run data modify storage xper: type set from storage xper: temp
data remove storage xper: temp


function xper:
