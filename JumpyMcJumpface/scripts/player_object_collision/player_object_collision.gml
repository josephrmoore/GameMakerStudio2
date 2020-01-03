var obj = argument0;

// Horizontal object collision - oDoor

if (place_meeting(x+hsp,y,obj)) {
		while(!place_meeting(x+sign(hsp),y,obj)){
			x = x + sign(hsp);
		}
		hsp = 0;
		//player_tile_collision();
}


// Vertical object collision - oDoor

if (place_meeting(x,y+vsp,obj)) {
		while(!place_meeting(x,y+sign(vsp),obj)){
			y = y + sign(vsp);
		}
		vsp = 0;
		grounded = true;
		jumps = 0;
		//player_tile_collision();
}