var obj = argument0;

// Horizontal object collision

if (place_meeting(x+hsp,y,obj)) {
		while(!place_meeting(x+sign(hsp),y,obj)){
			x = x + sign(hsp);
		}
		hsp = 0;
}


// Vertical object collision

if (place_meeting(x,y+vsp,obj)) {
		grounded = true;
		jumps = 0;
		no_collisions = false;
		show_debug_message(obj);
		while(!place_meeting(x,y+sign(vsp),obj)){
			y = y + sign(vsp);
		}
		vsp = 0;
}

brute_force_check(obj);