function object_collision_like_tiles(argument0) {
	var obj = argument0;

	// Set bbox_side
	var bbox_side;
	var hsp_integer;
	var vsp_integer;

	// Vertical tile collision

	if(vsp > 0){
		bbox_side = bbox_bottom;
		vsp_integer = ceil(vsp);
	} else {
		bbox_side = bbox_top;
		vsp_integer = floor(vsp);
	}


	if (place_meeting(x,y+vsp_integer,obj)) {
		if(vsp > 0){
			y = y - (y mod 30) + 29 - (bbox_bottom - y);
			//y = y - (bbox_bottom mod 30) + 29;  // Lots of clipping
			jumps = 0;
			grounded = true;
			no_collisions = false;
		} else {
			y = y - (y mod 30) - (bbox_top - y);
		}
		var vsp_sign = 1;	
		if(vsp<0){
			vsp_sign = -1;
		}
		vsp = 0;
		if(obj == oButton){
			var y_instance = instance_place(x, y+vsp_sign, obj);
			if (y_instance != noone){
				click_button(y_instance);
			}
		}
	}

	// Horizontal tile collision

	if(hsp > 0) {
		bbox_side = bbox_right;
		hsp_integer = ceil(hsp);
	} else {
		bbox_side = bbox_left;
		hsp_integer = floor(hsp);
	}

	if (place_meeting(x+hsp_integer,y,obj)) {
		if(hsp > 0){
			x = x - (x mod 30) + 29 - (bbox_right - x);
		} else {
			x = x - (x mod 30) - (bbox_left - x);
		}
		var hsp_sign = 1;	
		if(hsp<0){
			hsp_sign = -1;
		}
		hsp = 0;
		if(obj == oButton){
			var x_instance = instance_place(x+hsp_sign, y, obj);
			if (x_instance != noone){
				click_button(x_instance);
			}
		}
	}

	brute_force_check(obj);


}
