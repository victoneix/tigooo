if(place_meeting(x,y-1,obj_player)){
	image_speed = 1;
}

if(view_pos(xstart,ystart,view_camera[0])){
	x = xstart;
	y = ystart;
	image_speed = 0;
	image_index = 0;
} else if(!return_pos && obj_player.return_time <= 0){
	return_pos = true;
	if(return_pos){
		x = xstart;
		y = ystart;
		image_index = 0;
		image_speed = 0;
		return_pos = false;
	}
}