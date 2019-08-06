// Set bbox_side

var bbox_side;
var hsp_integer;

// Vertical tile collision

if(vsp > 0){
	bbox_side = bbox_bottom;
} else {
	bbox_side = bbox_top;
}

if(tilemap_get_at_pixel(tilemap, bbox_left, bbox_side+ceil(vsp)) != 0 || tilemap_get_at_pixel(tilemap, bbox_right, bbox_side+ceil(vsp)) != 0){
	if(vsp > 0){
		y = y - (y mod 32) + 31 - (bbox_bottom - y);
		location = PLAYERLOCATION.GROUNDED;
		if(!ground_sound){
			audio_play_sound(sndLandGround, 6, false);
			ground_sound = true;
		}
	} else {
		y = y - (y mod 32) - (bbox_top - y);
	}
	vsp = 0;
} else {
	if(vsp != 0){
		location = PLAYERLOCATION.AIRBORNE;
		ground_sound = false;
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

if(tilemap_get_at_pixel(tilemap, bbox_side+hsp_integer, bbox_top) != 0 || tilemap_get_at_pixel(tilemap, bbox_side+hsp_integer, bbox_bottom) != 0){
	if(hsp > 0){
		x = x - (x mod 32) + 31 - (bbox_right - x);
		if(location == PLAYERLOCATION.AIRBORNE && can_hook && oController.key_right){
			location = PLAYERLOCATION.HANGING;
		}
	} else {
		x = x - (x mod 32) - (bbox_left - x);
		if(location == PLAYERLOCATION.AIRBORNE && can_hook && oController.key_left){
			location = PLAYERLOCATION.HANGING;
		}
	}
	hsp = 0;
}
