// Inherit the parent event
event_inherited();
move_spd = 1;
move_dir = 1;

moving = function(){
	hspd = move_dir * move_spd;
	if(place_meeting(x+hspd,y,obj_collision)){
		move_dir *= -1;
	}
	
	if(!position_meeting(x+(8*move_dir),y+1,obj_collision)){
		move_dir *= -1;
	}
	teleport();
}

teleport = function(){
	var _siz_w = 16;
	var _siz_h = 16;
	
	if(x < -_siz_w){
		x = room_width + _siz_w;
	} else if(x > room_width + _siz_w){
		x = -_siz_w;
	}
	
	if(y < -_siz_h){
		y = room_height + _siz_h;
	} else if(y > room_height + _siz_h){
		y = -_siz_h;
	}
}