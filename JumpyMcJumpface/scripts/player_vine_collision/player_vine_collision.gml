var obj = argument0;

// Horizontal object collision
if(!oGame.buttons){
	if (place_meeting(x+hsp,y,obj)) {
			x = bbox_left + ((obj.bbox_right - obj.bbox_left)/2);
			y = bbox_top + ((obj.bbox_bottom - obj.bbox_top)/2);
	}


	// Vertical object collision

	if (place_meeting(x,y+vsp,obj)) {
			x = bbox_left + ((obj.bbox_right - obj.bbox_left)/2);
			y = bbox_top + ((obj.bbox_bottom - obj.bbox_top)/2);
	}
}

//brute_force_check(obj);