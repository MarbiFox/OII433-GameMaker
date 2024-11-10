/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

obj_panel_status.question_status[question_current] = 1
bad_questions++
question_current++
alarm[2] = 1

ds_map_add(respuestas,"qt"+string(question_current),"respuesta incorrecta")

