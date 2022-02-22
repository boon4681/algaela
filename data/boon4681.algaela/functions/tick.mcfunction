tag @e[tag=algaela,tag=part,tag=saved] remove saved
execute as @e[tag=algaela,tag=core] at @s run function boon4681.algaela:update
kill @e[tag=algaela,tag=part,tag=!saved]
schedule function boon4681.algaela:tick 1t