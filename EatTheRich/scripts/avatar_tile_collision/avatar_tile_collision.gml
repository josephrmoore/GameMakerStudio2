function player_tile_collision() {
	// Set bbox_side

	var bbox_side;
	var hsp_integer;
	var vsp_integer;

	// Vertical tile collision

	if(vsp > 0){
		bbox_side = bbox_bottom;
		vsp_integer = ceil(hsp);
	} else {
		bbox_side = bbox_top;
		vsp_integer = floor(hsp);
	}

	if(tilemap_get_at_pixel(oGame.tilemap, bbox_left, bbox_side+vsp_integer) != 0 || tilemap_get_at_pixel(oGame.tilemap, bbox_right, bbox_side+vsp_integer) != 0){
		if(vsp > 0){
			y = y - (y mod 8) + 7 - (bbox_bottom - y);
		} else {
			y = y - (y mod 8) - (bbox_top - y);
		}
		vsp = 0;
	}

	// Horizontal tile collision

	if(hsp > 0) {
		bbox_side = bbox_right;
		hsp_integer = ceil(hsp);
	} else {
		bbox_side = bbox_left;
		hsp_integer = floor(hsp);
	}

	if(tilemap_get_at_pixel(oGame.tilemap, bbox_side+hsp_integer, bbox_top) != 0 || tilemap_get_at_pixel(oGame.tilemap, bbox_side+hsp_integer, bbox_bottom) != 0){
		if(hsp > 0){
			x = x - (x mod 8) + 7 - (bbox_right - x);
		} else {
			x = x - (x mod 8) - (bbox_left - x);
		}
		hsp = 0;
	}



}
