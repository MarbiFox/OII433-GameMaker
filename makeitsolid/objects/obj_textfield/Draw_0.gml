/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

// Inherit the parent event
event_inherited();

draw_set_font(font);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text_ext_color(x,y-64,textTitle,lineHeight,(image_xscale*sprite_width)-24,c_white,c_white,c_white,c_white,1);

draw_set_font(font);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text_ext_color(camera_get_view_width(0)/2,y+64,textAlert,lineHeight,(image_xscale*sprite_width)-24,c_red,c_red,c_red,c_red,1);

