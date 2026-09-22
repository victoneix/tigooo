if(keyboard_check_pressed(ord("R"))){
	game_restart();
}
if(global.passed[that]){
	image_index = 1;
}
show_debug_message(global.passed[that]);
