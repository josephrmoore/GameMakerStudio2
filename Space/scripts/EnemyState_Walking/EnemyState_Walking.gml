// Set bbox_side

var bbox_side;
var hsp_int;

// Vertical tile collision

if(vsp > 0){
	bbox_side = bbox_bottom;
} else {
	bbox_side = bbox_top;
}

if(tilemap_get_at_pixel(oPlayer.tilemap, bbox_left, bbox_side+ceil(vsp)) != 0 || tilemap_get_at_pixel(oPlayer.tilemap, bbox_right, bbox_side+ceil(vsp)) != 0){
	if(vsp > 0){
		y = y - (y mod 32) + 31 - (bbox_bottom - y);
	} else {
		y = y - (y mod 32) - (bbox_top - y);
	}
	vsp = 0;
}

if(vsp < oPlayer.max_vsp){
	vsp += oPlayer.grv;
} else {
	vsp = oPlayer.max_vsp;
}

// Dunno if i need this?

if(vsp > 5){
	vsp = 5;
}

if(vsp < -5){
	vsp = -5;	
}



// Horizontal tile collision

if(hsp>0) {
	bbox_side = bbox_right;
	hsp_int = ceil(hsp);
} else {
	bbox_side = bbox_left;
	hsp_int = floor(hsp);
}



if(tilemap_get_at_pixel(oPlayer.tilemap, bbox_side+hsp_int, bbox_top) != 0 || tilemap_get_at_pixel(oPlayer.tilemap, bbox_side+hsp_int, bbox_bottom) != 0){	
	if(hsp > 0){
		x = x - (x mod 32) + 31 - (bbox_right - x);
	} else {
		x = x - (x mod 32) - (bbox_left - x);
	}
	hsp *= -1;
}

x += ceil(hsp);
y += round(vsp);

var reversible = 1;

if(facing_right){
	reversible = -1;
}

if(hsp<0){
	image_xscale = 1*reversible;
} else {
	image_xscale = -1*reversible;
}