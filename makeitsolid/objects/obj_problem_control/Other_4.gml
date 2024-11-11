/// @description Inserte aquí la descripción
// Puede escribir su código en este editor


respuestas = array_create(question_limit,0)
question_status_array = array_create(question_limit,0)
problem_type = obj_control.target_problem
problem_level = obj_control.target_level

var _size = ds_map_size(global.question_map[? problem_type][? "lv"+string(problem_level)])

var _f = function(_index)
{
    return _index + 1;
}

problem_order = array_shuffle(array_create_ext(_size,_f))

show_debug_message(problem_order)

alarm[2] = 1