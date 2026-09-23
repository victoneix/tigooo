event_inherited();
return_time_max = 30;
return_time = return_time_max;
life_max = 3;
state = "idle";

move_spd = 0;
move_spd_max = 2;
acc = .3;
dcc = .3;
coll = obj_collision;

jump_height = 6;
coyote_time_max = 10;
coyote_time = 0;

moving = function(){
	var _right	= keyboard_check(ord("D"));		
	var _left	= keyboard_check(ord("A"));
	var _jump	= keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_space);
	var _jump_donw	= keyboard_check(ord("W")) || keyboard_check(vk_space);
	var _move	= (_right - _left) != 0;
	var _ground	= place_meeting(x,y+1,coll);
	
	switch(state){
		case "idle":
			vspd += grav;
			vspd = clamp(vspd,vspd_min,vspd_max);
			if(hspd != 0) image_xscale = sign(hspd);
	
			if(_ground){
				coyote_time = coyote_time_max;
			} else{
				coyote_time--;
			}
	
			if(coyote_time > 0 && _jump){
				vspd = 0;
				coyote_time = 0;
				vspd -= jump_height;
			}
				
			if(!_jump_donw && vspd < 0){
				vspd = max(vspd,-jump_height/2);
			}
	
			if(_move){
				move_dir = point_direction(0,0,_right - _left,0);
				move_spd = approach(move_spd,move_spd_max,acc);
				sprite_index = spr_player_walk;
			} else{
				sprite_index = spr_player_idle;
				move_spd = approach(move_spd,0,dcc);
			}
	
			hspd = lengthdir_x(move_spd,move_dir);
			
			if(place_meeting(x,y,obj_spiky)) damage();
			if(!_ground && vspd > 0){
				var _collision_e = instance_place(x,y+1,obj_goomba);
				if(_collision_e){
					vspd = 0;
					vspd -= jump_height;
					instance_destroy(_collision_e.id);
				}
			} else{
				if(place_meeting(x,y,obj_goomba)){
					damage();
				}
			}
	
			teleport();
		break;
		
		case "dead":
			vspd = 0;
			hspd = 0;
			move_spd = 0;
			sprite_index = spr_player_dead;
			
			var _rec_time = global.time_sec;
			
			if(return_time > 0){
				return_time--;
			} else{
				if(global.life < 1){ 
					global.life = life_max;
					global.keys = 0;
				}
				if(global.check_y != 0){
					x = global.check_x;
					y = global.check_y;
				}else{
					x = xstart;
					y = ystart;
				}
				global.time_sec = _rec_time;
				return_time = return_time_max;
				state = "idle";
				obj_mobile_platforms_h.state = "idle";
				obj_mobile_platforms_w.state = "idle";
				obj_suff_platform.state = "idle";
				obj_time.state = "idle";
			}
		break;
	}
}

damage = function(){
	if(global.life > 0){
		state = "dead";
		global.life--;
	} 
}

teleport = function(){
	var _siz_w = 10;
	var _siz_h = 16;
	
	if(x < -_siz_w){
		x = room_width + _siz_w;
	} else if(x > room_width + _siz_w){
		x = -_siz_w;
	}
	
	if(y < -_siz_h){
		y = room_height + _siz_h;
	} else if(y > room_height + _siz_h){
		y = -_siz_h;
	}
}

approach = function(val1 = 0, val2 = 0, amount = 0){
	if(val1 < val2){
		val1 += amount
		if(val1 > val2)
			return val2;
	} else{
		val1 -= amount
		if(val1 < val2)
			return val2;
	}
	return val1;
}