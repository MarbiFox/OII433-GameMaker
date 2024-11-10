draw_self();
draw_set_font(font_textbox);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

if(spriteToShow != noone && spriteToShow != undefined){
	draw_sprite(spriteToShow,image_speed,x,y)
}