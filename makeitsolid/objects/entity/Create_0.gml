/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
ent_spd = 64 / 60 * 1;
distance = 0
self.map_actions = ds_map_create()
self.map_actions[? "up"] = function(){
	vspeed=-ent_spd;
	distance=64;
}
self.map_actions[? "down"] = function(){
	vspeed=ent_spd;
	distance=64;
}
self.map_actions[? "left"] = function(){
	hspeed=-ent_spd;
	distance=64;
}
self.map_actions[? "right"] = function(){
	hspeed=ent_spd;
	distance=64;
}

self.test_func= function(){
	show_debug_message("this is a test function say hi!")
}