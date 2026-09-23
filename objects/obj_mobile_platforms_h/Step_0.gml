switch(state){
	case "idle":
		vspd = 0;
		x = xstart;
		y = ystart;
	break;
	
	case "move":
		vspd = move_dir * move_spd;
		teleport();
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
	break
}

if(place_meeting(x,y-1,obj_player)){
	state = "move";
}