/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

scr_problemControl(problem_type,problem_level,question_current+1)

if (question_current < question_limit) {
	if (!question_draw){
		obj_panel_tittle.textToShow = title
		obj_panel_question.spriteToShow = promblem_sprite
		scr_problemRandomButton(0)
		obj_panel_level.textToShow = "level "+string(problem_level)
		obj_panel_status.question_number = question_limit
	}
}else{
	question_current = 0;
	if(good_questions == question_limit) {
		_text = "pasaste de nivel"
		global.problem_levels[? problem_type]++
	}else if (good_questions == 0){
		_text = "eri terrible weon"
	}else{
		_text = "tubiste " + string(good_questions) + " preguntas correctas"
	}
	
	obj_panel_tittle.textToShow = _text
	obj_panel_question.spriteToShow = noone
	instance_destroy(obj_button_01)
	instance_destroy(obj_button_02)
	instance_destroy(obj_button_03)
	instance_destroy(obj_panel_level)
	obj_panel_status.question_number = question_limit
	
}