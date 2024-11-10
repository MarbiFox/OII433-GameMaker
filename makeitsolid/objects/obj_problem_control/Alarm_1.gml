/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
obj_panel_status.question_status[question_current] = 1
respuestas[question_current] = ["question_"+string(index),"respuesta_incorrecta"]
bad_questions++
question_current++
alarm[2] = 1

