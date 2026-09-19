var _fnt_ui = font_add_sprite(spr_font,ord("!"),0,0);
draw_set_font(_fnt_ui);
draw_text_ext_transformed_border(320,4,"Test Alpha",4,0,999,4,4,0,c_white,c_blue,1);
draw_set_font(-1);

var _d = 0;
repeat(life){
	draw_sprite_ext(spr_life,0,8*_d,4,4,4,0,c_white,1);
	_d += 4;
}