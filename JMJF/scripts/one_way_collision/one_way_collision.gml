function one_way_collision(argument0, argument1, argument2) {
	var obj = argument0;
	var axis = argument1;
	var dir = argument2;
	// Horizontal object collision
	if (place_meeting(x+hsp,y,obj)) {
		// no collision with a -hsp, collision with +hsp
		if(axis == "x" && dir < 0){
			// if moving right (+hsp)
			if(hsp>0){
				// collision
				while(!place_meeting(x+sign(hsp),y,obj)){
					x = x + sign(hsp);
				}
				hsp = 0;
			}
		// no collision with a +hsp, collision with -hsp
		} else if (axis == "x" && dir > 0){
			// if moving left (-hsp)
			if(hsp<0){
				// collision
				while(!place_meeting(x+sign(hsp),y,obj)){
					x = x + sign(hsp);
				}
				hsp = 0;
			}
		// all other cases, collision both ways
		} else {
			while(!place_meeting(x+sign(hsp),y,obj)){
				x = x + sign(hsp);
			}
			hsp = 0;
		}
		

	}


	// Vertical object collision

	if (place_meeting(x,y+vsp,obj)) {
		// no collision with a -vsp, collision with +vsp
		if(axis == "y" && dir < 0){
			// if moving down (+vsp)
			if(vsp>0){
				// collision
				grounded = true;
				jumps = 0;
				while(!place_meeting(x,y+sign(vsp),obj)){
					y = y + sign(vsp);
				}
				vsp = 0;
			}
		// no collision with a +vsp, collision with -vsp
		} else if (axis == "y" && dir > 0){
			// if moving up (-vsp)
			if(vsp<0){
				// collision
				while(!place_meeting(x,y+sign(vsp),obj)){
					y = y + sign(vsp);
				}
				vsp = 0;
			}
		// all other cases, collision both ways
		} else {
			if(vsp>0){
				grounded = true;
				jumps = 0;
			}
			while(!place_meeting(x,y+sign(vsp),obj)){
				y = y + sign(vsp);
			}
			vsp = 0;
		}
	} 

//	brute_force_check(obj);

}
