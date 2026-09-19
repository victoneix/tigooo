var _fnt_ui = font_add_sprite(spr_font,ord("!"),0,0);
draw_set_font(_fnt_ui);

draw_set_colour(c_gray);
draw_text_ext_transformed(8,4,"TIGOOO ALPHA TEST",0,999,4,4,0);
draw_text_ext_transformed(0,4,"TIGOOO ALPHA TEST",0,999,4,4,0);

draw_text_ext_transformed(4,8,"TIGOOO ALPHA TEST",0,999,4,4,0);
draw_text_ext_transformed(4,0,"TIGOOO ALPHA TEST",0,999,4,4,0);
draw_set_colour(c_white);

draw_text_ext_transformed(4,4,"TIGOOO ALPHA TEST",0,999,4,4,0);
draw_set_font(-1);

var _d = 0;
repeat(life){
	draw_sprite_ext(spr_life,0,4*_d,48,4,4,0,c_white,1);
	_d += 8;
}