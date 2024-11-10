// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function scr_problemControl(_problem_id,_lvl,_problem_index){
	
	if(_problem_index>3){
		finish = true
		return
	}
	
	_auxmap = global.question_map
	_lvl_id = "lv" + string(_lvl)
	show_debug_message(_lvl_id)
	_qt_id = "qt" + string(_problem_index)
	
	title = _auxmap[? _problem_id][? _lvl_id][?_qt_id][? "title"]
	promblem_sprite = asset_get_index(_auxmap[? _problem_id][? _lvl_id][?_qt_id][? "sprite"])
	good = _auxmap[? _problem_id][? _lvl_id][?_qt_id][? "good"]
	bad1 = _auxmap[? _problem_id][? _lvl_id][?_qt_id][? "bad1"]
	bad2 = _auxmap[? _problem_id][? _lvl_id][?_qt_id][? "bad2"]
	
}
	
function scr_problemRandomButton(_type){

		var _array = [[good,0],[bad1,1],[bad2,1]]
		_array = array_shuffle(_array)
		obj_button_01.textToShow = _array[0][0]
		obj_button_01.alarm_index = _array[0][1]
		obj_button_02.textToShow = _array[1][0]
		obj_button_02.alarm_index = _array[1][1]
		obj_button_03.textToShow = _array[2][0]
		obj_button_03.alarm_index = _array[2][1]
		

}
	

