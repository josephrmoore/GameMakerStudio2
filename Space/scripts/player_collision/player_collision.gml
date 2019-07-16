// Horizontal tile collision

// Set bbox_side

var bbox_side;
var hsp_integer;
if(oPlayer.facing > 0) {
	bbox_side = oPlayer.bbox_right;
	hsp_integer = ceil(hsp);
} else {
	bbox_side = oPlayer.bbox_left;
	hsp_integer = floor(hsp);
}

if(tilemap_get_at_pixel(tilemap, bbox_side+hsp_integer, bbox_top) != 0 || tilemap_get_at_pixel(tilemap, bbox_side+hsp_integer, bbox_bottom) != 0){
	if(hsp > 0){
		x = x - (x mod 32) + 31 - (bbox_right - x);
		if(!grounded && can_hook && key_right){
			vsp = hang_grv;
			jumps = 0;
			dashes = 0;
			hanging_right = true;
		} else {
			hanging_right = false;
		}
	} else {
		x = x - (x mod 32) - (bbox_left - x);
		if(!grounded && can_hook && key_left){
			vsp = hang_grv;
			jumps = 0;
			dashes = 0;
			hanging_left = true;
		} else {
			hanging_left = false;
		}
	}
	hsp = 0;
} else {
	hanging_left = false;
	hanging_right = false;
}

// Vertical tile collision

if(vsp > 0){
	bbox_side = bbox_bottom;
} else {
	bbox_side = bbox_top;
}

if(tilemap_get_at_pixel(tilemap, bbox_left, bbox_side+ceil(vsp)) != 0 || tilemap_get_at_pixel(tilemap, bbox_right, bbox_side+ceil(vsp)) != 0){
	if(vsp > 0){
		y = y - (y mod 32) + 31 - (bbox_bottom - y);
		grounded = true;
		jumps = 0;
		dashes = 0;
		//image_speed = 0;
		//image_index = 0;
	} else {
		y = y - (y mod 32) - (bbox_top - y);
	}
	vsp = 0;
}

