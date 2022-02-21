effect give @s invisibility 100 1 true
scoreboard players add @s algaela.sine 30
scoreboard players operation input algaela.sine = @s algaela.sine
function boon4681.algaela:sine
scoreboard players operation @s algaela.sine = input algaela.sine

execute store result score selected algaela.id.selected run scoreboard players get @s algaela.id
tag @e[tag=part,predicate=boon4681.algaela:find_part] add update.animation
execute as @e[tag=update.animation] run function boon4681.algaela:animation/update

tp @e[tag=update.animation] @s
tp @e[tag=update.animation] ~ ~-0.5 ~
tag @e[tag=part] remove update.animation