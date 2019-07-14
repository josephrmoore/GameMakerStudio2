/// @description Insert description here
// You can write your code in this editor



if(vsp < oPlayer.max_vsp){
	vsp += (oPlayer.grv/2);
} else {
	vsp = (oPlayer.max_vsp/2);
}

hsp = approach(hsp, 0, 0.5);

if(place_meeting(x,y,oDoor)){
	vsp = 0;
	y = y + sign(vsp);
	//vsp = approach(vsp, 0, 3);
	//vsp *= -1;
	//hsp *= -1;
}

if(tilemap_get_at_pixel(oPlayer.tilemap, bbox_left, bbox_top) != 0 || tilemap_get_at_pixel(oPlayer.tilemap, bbox_right, bbox_bottom) != 0){
	vsp = 0;
	y = y - (y mod 32) + 31 - (bbox_bottom - y);
	//vsp = approach(vsp, 0, 3);
	//vsp *= -1;
	//hsp *= -1;
}

x += hsp;
y += vsp;