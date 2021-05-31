function player_object_collision(argument0) {
	
	var obj = argument0;
	var elas = obj.elasticity;
	var inst_bouncy = obj.bouncy;
	
		var inst;
//		var collides = true;
		inst = instance_place(x+hsp, y+vsp, obj);
		if inst != noone
			{    
				elas = inst.elasticity;
				inst_bouncy = inst.bouncy;
//				collides = inst.is_activated;
			}
		
//	if(collides){
		
	// Horizontal object collision
	if (place_meeting(x+hsp,y,obj)) {
			while(!place_meeting(x+sign(hsp),y,obj)){
				x = x + sign(hsp);
			}
			// BOUNCE GOES HERE
//			if(!oGame.move_left && !oGame.move_right){
//show_debug_message(obj.elasticity);
				hsp = -hsp*elas;
			//	vsp = -vsp*elasticity;
//			} else {
//				hsp = 0;
//			}
	}


	// Vertical object collision
	if (place_meeting(x,y+vsp,obj)) {

		if(vsp>0){
			grounded = true;
			jumps = 0;
		} else {
			grounded = false;
		}
		while(!place_meeting(x,y+sign(vsp),obj)){
			y = y + sign(vsp);
		}
		
		// BOUNCE GOES HERE
		if(inst_bouncy){
			vsp = -vsp*elas;
		} else {
			vsp = 0;
		}
		
	} else {
		grounded = false;
	}
	
//	brute_force_check(obj);
	
//	}

}