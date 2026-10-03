vspd = move_dir * move_spd;
if(place_meeting(x,y+sign(vspd),obj_collision)){
	move_dir *= -1;
}

var _c = place_meeting(x,y+sign(vspd),obj_player) || place_meeting(x,y-1,obj_player);

if(_c){
	with(obj_player){
		y+=other.vspd;
	}
}

y+=vspd;