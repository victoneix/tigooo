if(place_meeting(x,y-1,obj_player)){
	image_speed = 1;
}


if(!place_meeting(xstart,ystart,obj_player)){
	if(image_index >= 5) back_time--;
	if(back_time <= 0){
		x = xstart;
		y = ystart;
		image_speed = 0;
		image_index = 0;
		back_time = back_time_max;
	}
} else{
	back_time = back_time_max;
}

show_debug_message(back_time);