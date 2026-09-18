hspd = 0;
move_dir = 1;
move_spd = 1;

teleport = function(){
	var _siz_w = image_xscale*sprite_get_width(spr_mobile_platforms);
	
	if(x < -_siz_w){
		x = room_width + _siz_w;
	} else if(x > room_width + _siz_w){
		x = -_siz_w;
	}
}