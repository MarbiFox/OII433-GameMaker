/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

respuestas = ds_map_create()
question_status_array = array_create(question_limit,0)
problem_type = obj_control.target_problem
problem_level = obj_control.target_level

show_debug_message(json_encode(global.problem_levels))

alarm[2] = 1