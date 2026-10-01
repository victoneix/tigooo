//var _fnt_ui = font_add_sprite(spr_font,ord("!"),0,0);
//draw_set_font(_fnt_ui);
//draw_set_halign(1);
//draw_text_ext_transformed_border(320+80,4,"Alpha Test 1.0.0",4,0,999,4,4,0,c_white,c_blue,1);
//draw_set_halign(0);
//draw_set_font(-1);

var _d = 0;
repeat(global.life){
	draw_sprite_ext(spr_life,4,1*_d,0,1,1,0,c_white,1);
	_d += 8;
}

var _k = 0;
repeat(global.keys){
	draw_sprite_ext(spr_key_ui,0,1*_k,8,1,1,0,c_white,1);
	_k += 8;
}