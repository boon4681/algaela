scoreboard players set mcb.temp2 algaela.sine 1
execute if score input algaela.sine matches 360.. run scoreboard players set input algaela.sine 0
execute if score input algaela.sine matches 180.. run scoreboard players set mcb.temp2 algaela.sine -1
scoreboard players operation mcb.sb.1 algaela.sine = input algaela.sine
scoreboard players set mcb.temp algaela.sine 180
scoreboard players operation mcb.sb.1 algaela.sine %= mcb.temp algaela.sine
scoreboard players operation input_sub algaela.sine = mcb.sb.1 algaela.sine
scoreboard players set mcb.sb.2 algaela.sine 180
scoreboard players operation mcb.sb.2 algaela.sine -= input_sub algaela.sine
scoreboard players operation mcb.sb.2 algaela.sine *= input_sub algaela.sine
scoreboard players operation sub algaela.sine = mcb.sb.2 algaela.sine
scoreboard players set mcb.sb.3 algaela.sine 4
scoreboard players operation mcb.sb.3 algaela.sine *= sub algaela.sine
scoreboard players set mcb.temp algaela.sine 10000
scoreboard players operation mcb.sb.3 algaela.sine *= mcb.temp algaela.sine
scoreboard players set mcb.sb.4 algaela.sine 40500
scoreboard players operation mcb.sb.4 algaela.sine -= sub algaela.sine
scoreboard players operation sine algaela.sine = mcb.sb.3 algaela.sine
scoreboard players operation sine algaela.sine /= mcb.sb.4 algaela.sine
scoreboard players operation sine algaela.sine *= mcb.temp2 algaela.sine