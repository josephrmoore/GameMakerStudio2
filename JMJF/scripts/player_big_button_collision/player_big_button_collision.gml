// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_big_button_collision(argument0){
	var obj = argument0;
	if (place_meeting(x,y+vsp,obj)) {
//			show_debug_message("m");
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
			if(instance_exists(oButtonBig)){
				
				if(!oButtonBig.button_lock && !oButtonBig.on_button){
					var y_instance = instance_place(x, y+vsp_sign, obj);
					if(y_instance != noone){
						click_big_button(y_instance);
					}
				}
				
				with(oButtonBig){
					button_lock = true;
					on_button = true;
					if(alarm[0] <= 0){
						alarm[0] = 30;
					}
				}
			}


			
	} else {
//		show_debug_message("-m");
		grounded = false;
		if(instance_exists(oButtonBig)){
			oButtonBig.on_button = false;
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
			//var x_instance = instance_place(x+hsp_sign, y, obj);
			//if (x_instance != noone){
			//	click_button(x_instance);
			//}
	}
}