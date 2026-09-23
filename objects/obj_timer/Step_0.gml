if(global.time_sec >= 0){
	global.time_mil--;
	if(global.time_mil < 0){
		global.time_sec--;
		global.time_mil = time_mil_max;
	}
} else{
	room_goto(rm_menu);
}