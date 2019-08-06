var obj = argument0;

// Horizontal object collision - oDoor

if (place_meeting(x+hsp,y,obj)) {
	show_debug_message(object_get_name(obj));
	show_debug_message("passable: " + string(obj.passable));
	show_debug_message("state: " + string(obj.door_state));
	//show_debug_message(obj.door_state);
	if(!obj.passable){
		while(!place_meeting(x+sign(hsp),y,obj)){
			x = x + sign(hsp);
		}
		hsp = 0;
		player_tile_collision();
	}
}


// Vertical object collision - oDoor

if (place_meeting(x,y+vsp,obj)) {
	if(!obj.passable){
		location = PLAYERLOCATION.GROUNDED
		jumps = 0;
		dashes = 0;
		while(!place_meeting(x,y+sign(vsp),obj)){
			y = y + sign(vsp);
		}
		vsp = 0;
		player_tile_collision();
	}
}