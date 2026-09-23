vspd = 0;
move_dir = -1;
move_spd = 1;
state = "idle";	


teleport = function(){
	var _siz_h = image_yscale*sprite_get_height(spr_mobile_platforms);
	
	if(y < -_siz_h){
		y = room_height + _siz_h;
	} else if(y > room_height + _siz_h){
		y = -_siz_h;
	}
}