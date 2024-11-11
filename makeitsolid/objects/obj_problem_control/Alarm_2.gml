/// @description Inserte aquí la descripción
// Puede escribir su código en este editor



if (question_current < question_limit) {
	
	index = array_pop(problem_order)
	
	scr_problemControl(problem_type,problem_level,index)
	
	obj_panel_tittle.textToShow = title
	obj_panel_question.spriteToShow = promblem_sprite
	scr_problemRandomButton(0)
	obj_panel_level.textToShow = "level " + string(problem_level)
	obj_panel_status.question_number = question_limit
	
}else{
	question_current = 0;
	finished_process = true
	if(good_questions == question_limit) {
		_text = "Felicidades has Pasado al nivel"+string(problem_level)+" !"
		global.problem_levels[? problem_type]++
	}else if (good_questions == 0){
		_text = "No tienes ninguna pregunta buena pero puedes seguir intentandolo"
	}else{
		_text = "Has Tenido " + string(good_questions) + " Preguntas correctas, sigue asi!"
	}
	
	obj_panel_tittle.textToShow = _text
	obj_panel_question.spriteToShow = noone
	instance_destroy(obj_button_01)
	instance_destroy(obj_button_02)
	instance_destroy(obj_button_03)
	instance_destroy(obj_panel_level)
	obj_panel_status.question_number = question_limit
	
}