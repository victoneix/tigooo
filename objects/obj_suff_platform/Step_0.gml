switch(state){
	case "idle":
		x = xstart;
		y = ystart;
		image_speed = 0;
		image_index = 0;
	break;
	
	case "go":
		image_speed = 1;
	break;
	
	case "bye":
		image_index = 5;
		image_speed = 0;
		x = 999999999;
		y = 999999999;
	break;
}

if(place_meeting(x,y-1,obj_player)){
	state = "go";
}

if(view_pos(xstart,ystart,view_camera[0])){
	state = "idle";
} 