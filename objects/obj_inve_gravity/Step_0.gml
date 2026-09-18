image_index = global.gravity;
if(keyboard_check_pressed(ord("E")) && place_meeting(x,y,obj_player)){
	global.gravity =! global.gravity;
	obj_player.grav *= -1;
}