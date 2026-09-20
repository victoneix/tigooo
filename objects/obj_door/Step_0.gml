var _verf = place_meeting(x-1,y,obj_player) || place_meeting(x+1,y,obj_player) || place_meeting(x,y-1,obj_player);

if(_verf && global.keys > 0){
	global.keys--;
	instance_destroy();
}