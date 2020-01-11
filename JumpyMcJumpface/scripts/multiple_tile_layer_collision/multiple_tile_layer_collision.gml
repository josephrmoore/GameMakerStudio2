// Set bbox_side

var tile_layer = argument0;

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

if(tilemap_get_at_pixel(tile_layer, bbox_left, bbox_side+vsp_integer) != 0 || tilemap_get_at_pixel(tilemap, bbox_right, bbox_side+vsp_integer) != 0){
	if(vsp > 0){
		y = y - (y mod 30) + 29 - (bbox_bottom - y);
		jumps = 0;
		grounded = true;
	} else {
		y = y - (y mod 30) - (bbox_top - y);
	}
	vsp = 0;
	no_collisions = false;
}

// Horizontal tile collision

if(hsp > 0) {
	bbox_side = bbox_right;
	hsp_integer = ceil(hsp);
} else {
	bbox_side = bbox_left;
	hsp_integer = floor(hsp);
}

if(tilemap_get_at_pixel(tile_layer, bbox_side+hsp_integer, bbox_top) != 0 || tilemap_get_at_pixel(tilemap, bbox_side+hsp_integer, bbox_bottom) != 0){
	if(hsp > 0){
		x = x - (x mod 30) + 29 - (bbox_right - x);
	} else {
		x = x - (x mod 30) - (bbox_left - x);
	}
	hsp = 0;
	no_collisions = false;
}