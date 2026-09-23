if(place_meeting(x,y,obj_player)){
	image_index = 1;
	global.check_x = x;
	global.check_y = y;
	check = true;
	with(obj_checkpoint){
		image_index = 0;
		check = false;
	}
}