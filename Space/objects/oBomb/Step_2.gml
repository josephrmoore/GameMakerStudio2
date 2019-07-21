/// @description Insert description here
// You can write your code in this editor



if(vsp < oPlayer.max_vsp){
	vsp += (oPlayer.grv/2);
} else {
	vsp = (oPlayer.max_vsp/2);
}

hsp = approach(hsp, 0, 0.5);

if(place_meeting(x,y,oDoor) || place_meeting(x,y,oBreakable)){
	vsp = 0;
	y = y + sign(vsp);
}

if(tilemap_get_at_pixel(oPlayer.tilemap, bbox_left, bbox_bottom+ceil(vsp)) != 0 || tilemap_get_at_pixel(oPlayer.tilemap, bbox_right, bbox_bottom+ceil(vsp)) != 0){
	vsp = 0;
	y = y - (y mod 32) + 31 - (bbox_bottom - y);
}

var hsp_int, bbox_side;
if(hsp>0){
	hsp_int = ceil(hsp);
	bbox_side = bbox_right;
} else {
	hsp_int = floor(hsp);
	bbox_side = bbox_left;
}

if(tilemap_get_at_pixel(oPlayer.tilemap, bbox_side+hsp_int, bbox_top) != 0 || tilemap_get_at_pixel(oPlayer.tilemap, bbox_side+hsp_int, bbox_bottom) != 0){
	vsp = 0;
	x = x - (x mod 32) + 31 - (bbox_side - x);
}


x += hsp;
y += vsp;