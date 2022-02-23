effect give @s invisibility 100 1 true
scoreboard players add @s algaela.sine 30
scoreboard players operation input algaela.sine = @s algaela.sine
function boon4681.algaela:sine
scoreboard players operation @s algaela.sine = input algaela.sine

execute if block ~ ~ ~ water run scoreboard players set @s algaela.air 0
execute unless block ~ ~ ~ water run scoreboard players add @s algaela.air 1
scoreboard players operation @s algaela.air %= temp algaela.air
execute if score @s algaela.air matches 1 store result entity @s Motion[1] double 0.001 run scoreboard players get temp2 algaela.air
effect give @s slowness 1 3 true

execute store result score selected algaela.id.selected run scoreboard players get @s algaela.id
execute as @e[tag=part,tag=!saved] if predicate boon4681.algaela:find_part run function boon4681.algaela:animation/update

tp @e[tag=update.animation] @s
tp @e[tag=update.animation] ~ ~-0.5 ~
tag @e[tag=update.animation] remove update.animation