/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

var _x = (1920/2) - (textbox_w/2)
var _y = (1080/2) - (textbox_h/2) + 300

draw_sprite_ext(spr_gui_textbox, 0, _x, _y,textbox_w/250,textbox_h/250,0,c_black,1);



draw_set_font(font_textbox);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text_ext(_x + 32, _y+16, text_user, 35, textbox_w-64);
draw_text_ext(_x + 32, _y + 68, textOnDisplay, 35, textbox_w-64);
