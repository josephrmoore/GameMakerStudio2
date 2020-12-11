function player_button_collision(argument0) {
	var obj = argument0;
	//show_debug_message("button collision");


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
			var vsp_sign = 1;	
			if(vsp<0){
				vsp_sign = -1;
			}
			vsp = 0;
			var y_instance = instance_place(x, y+vsp_sign, obj);
			if(y_instance != noone){
				click_button(y_instance);
			}
	} else {
		grounded = false;
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
			//var x_instance = instance_place(x+hsp_sign, y, obj);
			//if (x_instance != noone){
			//	click_button(x_instance);
			//}
	}

}
