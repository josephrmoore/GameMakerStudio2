function player_object_collision(argument0) {
	
	var obj = argument0;

//		var inst;
//		var collides = true;
//		inst = instance_place(x+hsp, y+vsp, obj);
//		if inst != noone
//			{    
//				collides = inst.is_activated;
//			}
		
//	if(collides){
		
	// Horizontal object collision
	if (place_meeting(x+hsp,y,obj)) {
			while(!place_meeting(x+sign(hsp),y,obj)){
				x = x + sign(hsp);
			}
			hsp = 0;
			// BOUNCE GOES HERE
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
		vsp = 0;
		// BOUNCE GOES HERE
		
	} else {
		grounded = false;
	}
	
//	brute_force_check(obj);
	
//	}

}