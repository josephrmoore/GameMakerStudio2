// Set bbox_side

var bbox_side;
//var hsp_integer;
//var tile_size = 32;


// Vertical tile collision

if(vsp > 0){
	bbox_side = bbox_bottom;
} else {
	bbox_side = bbox_top;
}

if(tilemap_get_at_pixel(tilemap, bbox_left, bbox_side+vsp) != 0 || tilemap_get_at_pixel(tilemap, bbox_right, bbox_side+vsp) != 0){
	if(vsp > 0){
		show_debug_message("standing on tile");
		y = y - (y mod 16) + 15 - (bbox_bottom - y);
	} else {
		show_debug_message("hitting head on tile");
		y = y - (y mod 16) - (bbox_top - y);
	}
	if(vsp>0){
		fighter_state = FIGHTERSTATES.IDLE;
	}
	vsp = 0;
}

// Horizontal tile collision

if(hsp > 0) {
	bbox_side = bbox_right;
//	hsp_integer = ceil(hsp);
} else {
	bbox_side = bbox_left;
//	hsp_integer = floor(hsp);
}

if(tilemap_get_at_pixel(tilemap, bbox_side+hsp, bbox_top) != 0 || tilemap_get_at_pixel(tilemap, bbox_side+hsp, bbox_bottom) != 0){
	//if(hsp > 0){
	//	x = x - (x mod tile_size) + (tile_size-1) - (bbox_right - x);
	//} else {
	//	x = x - (x mod tile_size) - (bbox_left - x);
	//}
	hsp = 0;
}

