// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_gameOver(){
	obj_player.x = 0
	obj_player.y = 0
	global.playerControl = false
	room_goto(rm_endgame)
}
	