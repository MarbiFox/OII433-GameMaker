/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

// Inherit the parent event
event_inherited();

textToShow = "exit"

press = function(){
	room_goto(rm_gameMain)
	global.playerControl = true;
	audio_stop_all()
}