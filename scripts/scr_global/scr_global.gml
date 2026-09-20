global.life = 3;
global.keys = 0;

function draw_text_ext_transformed_border(_x, _y, _string, _border, _sep, _w, _sclx, _scly, _agl, _color_text, _color_border, _alp){
	draw_text_ext_transformed_colour(_x+_border,_y,_string,_sep,_w,_sclx,_scly,_agl,_color_border,_color_border,_color_border,_color_border,_alp);
	draw_text_ext_transformed_colour(_x-_border,_y,_string,_sep,_w,_sclx,_scly,_agl,_color_border,_color_border,_color_border,_color_border,_alp);
	
	draw_text_ext_transformed_colour(_x,_y+_border,_string,_sep,_w,_sclx,_scly,_agl,_color_border,_color_border,_color_border,_color_border,_alp);
	draw_text_ext_transformed_colour(_x,_y-_border,_string,_sep,_w,_sclx,_scly,_agl,_color_border,_color_border,_color_border,_color_border,_alp);
	
	draw_text_ext_transformed_colour(_x,_y,_string,_sep,_w,_sclx,_scly,_agl,_color_text,_color_text,_color_text,_color_text,_alp);
}


function view_pos(_xpos, _ypos, _camera){
	
	var _camx = camera_get_view_x(_camera);
	var _camy = camera_get_view_y(_camera);

	var _camw = camera_get_view_width(_camera);
	var _camh = camera_get_view_height(_camera);

	var _camera_size = (_xpos < _camx || _xpos >= _camx + _camw || _ypos < _camy || _ypos >= _camy + _camh);
	
	return _camera_size;
}