/// @description Deal with Sequences and more

// Control Sequences

if((global.problem_levels[? "srp"] > 2) and (global.problem_levels[? "ocp"] > 2) and (global.problem_levels[? "lsp"] > 2) and cutscene == false){
	show_debug_message("juego terminado")
	if(room != rm_problema01){
		cutscene = true
		obj_player.x = 0
		obj_player.y = 0
		global.playerControl = false
		scr_playSequence(seq_gameOver)
	}
}