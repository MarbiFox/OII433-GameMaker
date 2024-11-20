/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if (pass != true and code == textToShow){
	pass = true
	textTitle = "Ingrese su nombre, sin espacio ni caracteres especiales"
	textToShow = ""
	textAlert = ""
} else if (pass != true and code != textToShow) {
	textAlert = "Codigo invalido"
}

if(pass and string_length(textToShow)>0){
	
	if (string_length(textToShow) > string_length(string_lettersdigits(textToShow))){	
	   textAlert = "Nombre invalido"
	}else{
		global.player_name = textToShow
		obj_control.alarm[1] = 1
	}
	
}


