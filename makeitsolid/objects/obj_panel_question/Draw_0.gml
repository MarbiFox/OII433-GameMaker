draw_self();

if(spriteToShow != noone && spriteToShow != undefined){
	temp_h = 170/(sprite_get_height(spriteToShow))
	
	draw_sprite_ext(spriteToShow,image_speed,x,y,4*temp_h,4*temp_h,0,c_white,1)
}