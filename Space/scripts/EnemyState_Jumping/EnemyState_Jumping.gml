if(facing_right){
	hsp = 2;
} else {
	hsp = -2;
}

// Set bbox_side

var bbox_side;

if(vsp < oPlayer.max_vsp){
	vsp += oPlayer.grv;
} else {
	vsp = oPlayer.max_vsp;
}

// Horizontal tile collision

if(hsp>0) {
	bbox_side = bbox_right;
} else {
	bbox_side = bbox_left;
}



if(tilemap_get_at_pixel(oPlayer.tilemap, bbox_side+ceil(hsp), bbox_top) != 0 || tilemap_get_at_pixel(oPlayer.tilemap, bbox_side+ceil(hsp), bbox_bottom) != 0){	
	if(hsp > 0){
		x = x - (x mod 32) + 31 - (bbox_right - x);
	} else {
		x = x - (x mod 32) - (bbox_left - x);
	}
	hsp *= -1;
}


// Vertical tile collision

if(vsp > 0){
	bbox_side = bbox_bottom;
} else {
	bbox_side = bbox_top;
}

if(tilemap_get_at_pixel(oPlayer.tilemap, bbox_left, bbox_side+vsp) != 0 || tilemap_get_at_pixel(oPlayer.tilemap, bbox_right, bbox_side+vsp) != 0){
	if(vsp > 0){
		y = y - (y mod 32) + 31 - (bbox_bottom - y);
	} else {
		y = y - (y mod 32) - (bbox_top - y);
	}
	vsp *= -1;
}

if(vsp > 5){
	vsp = 5;
}

x += ceil(hsp);
y += floor(vsp);