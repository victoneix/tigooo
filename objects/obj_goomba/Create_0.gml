// Inherit the parent event
event_inherited();
move_spd = 1;
move_dir = 1;
move_dir_get = move_dir;
stop_time_max = 60;
stop_time = 0;
state = "idle";

moving = function(){
	if(view_pos(x, y, view_camera[0])){
		if(stop_time > 0){
			stop_time--;
		}
	}else{
		state = "move";
		stop_time = stop_time_max;
	}
	
	if(stop_time <= 0 && view_pos(xstart, ystart, view_camera[0])){
		state = "idle";
		x = xstart;
		y = ystart;
		move_dir = move_dir_get;
	}
	
	switch(state){
		case "idle":
			hspd = 0;
			vspd = 0;
		break;
		
		case "move":
			hspd = move_dir * move_spd;
			if(place_meeting(x+hspd,y,obj_collision)){
				move_dir *= -1;
			}
	
			if(!position_meeting(x+(8*move_dir),y+1,obj_collision)){
				move_dir *= -1;
			}
		break;
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