/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

// Inherit the parent event
event_inherited();


sizea = (32 + 2 * question_number)+32


for (var i = 0; i < question_number; i += 1)
{	
	color_info = c_dkgray
	switch(question_status[i]){
		case 1: color_info = c_red break;
		case 2: color_info = c_green break;
	}
	posx = x-(question_number*64/2)+32+64*i
    draw_sprite_ext(spr_qt_info,0,posx,y,0.5,0.5,0,color_info,1)
}

