var obj = argument0;
show_debug_message("button collision");


// Vertical object collision

if (place_meeting(x,y+vsp,obj)) {
		grounded = true;
		jumps = 0;
		//no_collisions = false;
		while(!place_meeting(x,y+sign(vsp),obj)){
			y = y + sign(vsp);
			//show_debug_message("meeting y");
		}
		var vsp_sign = 1;	
		if(vsp<0){
			vsp_sign = -1;
		}
		vsp = 0;
		//show_debug_message("y collision");
		//player_tile_collision();
		var y_instance = instance_place(x, y+vsp_sign, obj);
		if(y_instance != noone){
			click_button(y_instance);
		}
}


// Horizontal object collision

if (place_meeting(x+hsp,y,obj)) {
		while(!place_meeting(x+sign(hsp),y,obj)){
			x = x + sign(hsp);
		}
		var hsp_sign = 1;	
		if(hsp<0){
			hsp_sign = -1;
		}
		hsp = 0;
		var x_instance = instance_place(x+hsp_sign, y, obj);
		if (x_instance != noone){
			click_button(x_instance);
		}
}

//brute_force_check(obj);