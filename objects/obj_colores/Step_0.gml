if(place_meeting(x,y,obj_player)){
	room_goto(rm_menu);
	global.passed[that] = true;
	array_delete(global.rooms,that,1);
}