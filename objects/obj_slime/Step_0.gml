if(instance_place(x,y-1,obj_player)){
	with(obj_player){
		if(hspd > 1){
			hspd = 1;
		} else if(hspd < 0){
			hspd = -1;
		}
	}
}