/// @description solucionado
// Puede escribir su código en este editor
obj_panel_status.question_status[question_current] = 2
question_current++;
good_questions++;
alarm[2] = 1

ds_map_add(respuestas,"qt"+string(question_current),"respuesta correcta")