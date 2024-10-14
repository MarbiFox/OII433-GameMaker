draw_self();

draw_set_font(font_textbox);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text_ext_color(x,y,textToShow,lineHeight,textWidth,c_white,c_white,c_white,c_white,image_alpha);


if(spriteToShow != noone && spriteToShow != undefined){
	draw_sprite(spriteToShow,0,x,y)
}