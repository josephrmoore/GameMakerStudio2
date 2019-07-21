var hazards = layer_tilemap_get_id("Hazards");

var xoff = random_range(-32, 32); 
var yoff = -20;

var bbox_side;
var hsp_integer;

// Vertical tile collision

if(vsp > 0){
	bbox_side = bbox_bottom;
} else {
	bbox_side = bbox_top;
}

if(tilemap_get_at_pixel(hazards, bbox_left, bbox_side+ceil(vsp)) != 0 || tilemap_get_at_pixel(hazards, bbox_right, bbox_side+ceil(vsp)) != 0){
	Pushback(xoff, yoff);
}

if(oPlayer.facing > 0) {
	bbox_side = oPlayer.bbox_right;
	hsp_integer = ceil(hsp);
} else {
	bbox_side = oPlayer.bbox_left;
	hsp_integer = floor(hsp);
}

if(tilemap_get_at_pixel(hazards, bbox_side+hsp_integer, bbox_top) != 0 || tilemap_get_at_pixel(hazards, bbox_side+hsp_integer, bbox_bottom) != 0){
	Pushback(xoff, yoff);
}
