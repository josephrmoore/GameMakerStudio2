// Set bbox_side

var bbox_side;
var hsp_integer;
var vsp_integer;

var no_collision = 0;

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
		y = y - (y mod 60) + 59 - (bbox_bottom - y);
		jumps = 0;
		grounded = true;
	} else {
		y = y - (y mod 60) - (bbox_top - y);
	}
	vsp = 0;
} else {
	no_collision += 1;
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
		x = x - (x mod 60) + 59 - (bbox_right - x);
	} else {
		x = x - (x mod 60) - (bbox_left - x);
	}
	hsp = 0;
} else {
	no_collision += 1;
}

if(no_collision == 2){
	grounded = false;
}