var obj = argument0;

// Horizontal object collision

if (place_meeting(x+hsp,y,obj)) {
		while(!place_meeting(x+sign(hsp),y,obj)){
			x = x + sign(hsp);
			show_debug_message("meeting x");
		}
		hsp = 0;
		//player_tile_collision();
}


// Vertical object collision

if (place_meeting(x,y+vsp,obj)) {
		while(!place_meeting(x,y+sign(vsp),obj)){
			y = y + sign(vsp);
			show_debug_message("meeting y");
		}
		vsp = 0;
		grounded = true;
		jumps = 0;
		//player_tile_collision();
}