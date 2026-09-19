

function view_pos(_xpos, _ypos, _camera){
	
	var _camx = camera_get_view_x(_camera);
	var _camy = camera_get_view_y(_camera);

	var _camw = camera_get_view_width(_camera);
	var _camh = camera_get_view_height(_camera);

	var _camera_size = (_xpos < _camx || _xpos >= _camx + _camw || _ypos < _camy || _ypos >= _camy + _camh);
	
	return _camera_size;
}