/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if(keyboard_check(vk_anykey)){
	textToShow += string(keyboard_string)
	keyboard_string = ""
}

if(keyboard_check(vk_backspace) and delay == 4){
	textToShow = string_delete(textToShow,string_length(textToShow),1)
	keyboard_string = ""
	delay = 0
}

if(delay < 4){
	delay++
}