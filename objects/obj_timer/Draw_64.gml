var _fnt_ui = font_add_sprite(spr_font,ord("!"),0,0);
draw_set_font(_fnt_ui);
draw_set_halign(1);
draw_text_ext_transformed_border(160/2,1,string(global.time_sec),1,0,999,1,1,0,c_white,c_black,1);
draw_set_halign(0);
draw_set_font(-1);