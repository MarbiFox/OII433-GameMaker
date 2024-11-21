/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

// Inherit the parent event
event_inherited();

myname = global.player_name

finish_func = function(){
	
			global.playerControl = false
			ii0 = instance_create_depth(x,y+300,-1000,obj_panel)
			ii0.image_blend = c_black
			ii0.textToShow = "Seguro que quiere salir?"
			ii0.image_yscale = 0.5
			ii0.image_xscale = 4

			ii1 = instance_create_depth(x-225,y+450,-1000,obj_button_base)
			ii1.textToShow = "si"
			ii1.image_yscale = 0.5
			ii1.image_blend = c_black
	
			ii2 = instance_create_depth(x+225,y+450,-1000,obj_button_base)
			ii2.textToShow = "no"
			ii2.image_yscale = 0.5
			ii2.image_blend = c_black
	
			ii1.press = function(){
				//global.playerControl = true
				room_goto(rm_endgame)
				instance_destroy(ii0.id)
				instance_destroy(ii1.id)
				instance_destroy(ii2.id)
			}
	
			ii2.press = function(){
				global.playerControl = true
				instance_destroy(ii0.id)
				instance_destroy(ii1.id)
				instance_destroy(ii2.id)
			}
}
	
