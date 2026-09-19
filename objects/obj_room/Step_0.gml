var _target_xview = (obj_player.x div 160) * 160;
var _target_yview = (obj_player.y div 120) * 120;

var _max_w = room_width - 160;
var _max_h = room_height - 120;

_target_xview = clamp(_target_xview, 0, _max_w);
_target_yview = clamp(_target_yview, 0, _max_h);

camera_set_view_pos(view_camera[0], _target_xview, _target_yview);