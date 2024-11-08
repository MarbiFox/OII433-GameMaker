/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

scr_problemControl(obj_control.target_problem,1,question_current+1)

if (question_current < question_limit) {
	if (!question_draw){
		obj_panel_tittle.textToShow = title
		obj_panel_question.spriteToShow = promblem_sprite
		scr_problemRandomButton(0)
		question_draw = true;
	}
}else{
	question_current = 0;
	room_goto(rm_gameMain);
	audio_stop_all();
	global.playerControl = true;
}