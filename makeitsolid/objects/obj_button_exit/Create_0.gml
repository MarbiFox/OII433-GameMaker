/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

// Inherit the parent event
event_inherited();

textToShow = "exit"

press = function(){
	room_goto(obj_control.oldroom)
	global.playerControl = true;
	audio_stop_all()
}