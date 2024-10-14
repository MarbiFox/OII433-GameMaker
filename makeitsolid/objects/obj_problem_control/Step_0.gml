/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if (question_current < question_limit) {
	obj_panel_tittle.textToShow = questionMap[question_current][problemText.title]
	obj_panel_question.textToShow = questionMap[question_current][problemText.question]
	obj_button_01.textToShow = questionMap[question_current][problemText.good]
	obj_button_02.textToShow = questionMap[question_current][problemText.bad1]
	obj_button_03.textToShow = questionMap[question_current][problemText.bad2]
}else{
	question_current = 0;
}