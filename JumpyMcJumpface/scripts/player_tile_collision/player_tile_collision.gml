if(oGame.current_room == "level4"){
	for(var i=0; i<array_length_1d(oGame.lvl4_tilemaps_active); i++){
		if(oGame.lvl4_tilemaps_active[i]){
			multiple_tile_layer_collision(oGame.lvl4_tilemaps[i]);
		}
	}
}

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

if(tilemap_get_at_pixel(tilemap, bbox_left, bbox_side+vsp_integer) != 0 || tilemap_get_at_pixel(tilemap, bbox_right, bbox_side+vsp_integer) != 0){
	if(vsp > 0){
		y = y - (y mod 30) + 29 - (bbox_bottom - y);
		//y = y - (bbox_bottom mod 30) + 29;  // Lots of clipping
		jumps = 0;
		grounded = true;
		tile_floor = true;
		no_collisions = false;
	} else {
		y = y - (y mod 30) - (bbox_top - y);
	}
	vsp = 0;
} else {
	tile_floor = false;
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
		x = x - (x mod 30) + 29 - (bbox_right - x);
	} else {
		x = x - (x mod 30) - (bbox_left - x);
	}
	hsp = 0;
}