switch(state){
	case "idle":
		hspd = 0;
		x = xstart;
		y = ystart;
	break;
	
	case "move":
		hspd = move_dir * move_spd;
		teleport();
		if(place_meeting(x+sign(hspd),y,obj_collision)){
			move_dir *= -1;
		}

		var _c = place_meeting(x+sign(hspd),y,obj_player) || place_meeting(x,y-1,obj_player);

		if(_c){
			with(obj_player){
				if(!place_meeting(x+other.hspd,y,obj_collision)){
					x+=other.hspd;
				}
			}
		}

		x+=hspd;
	break
}


if(place_meeting(x,y-1,obj_player)){
	state = "move";
}