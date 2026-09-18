spd = 2;
hspd = 0;
vspd = 0;
grav = 0.4;
coll = obj_collision;

moving = function(){
	var _right	= keyboard_check(ord("D"));
	var _left	= keyboard_check(ord("A"));
	var _jump	= keyboard_check(ord("W"));
	
	hspd = (_right - _left)*spd;
	vspd += grav;
	vspd = clamp(vspd, -7,7);
	
	if(place_meeting(x,y+1,coll) && _jump){
		vspd = 0;
		vspd -= 7;
	}
}

collision = function(){
	repeat(abs(hspd)){
		if(place_meeting(x+sign(hspd),y,coll)){
			hspd = 0;
			break;
		}else{
			x+=sign(hspd);
		}
	}
	
	repeat(abs(vspd)){
		if(place_meeting(x,y+sign(vspd),coll)){
			vspd = 0;
			break;
		}else{
			y+=sign(vspd);
		}
	}
}