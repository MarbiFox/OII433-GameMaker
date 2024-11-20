/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
show_debug_message("saved")
if(global.problem_finished != undefined and global.problem_finished != noone){
	scr_save_questions("respuestas_"+global.player_name,global.problem_finished)
}
	