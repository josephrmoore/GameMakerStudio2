/// @description Insert description here
// You can write your code in this editor

/// @description Insert description here
// You can write your code in this editor

if(place_meeting(x,y,oDoor)){
	instance_destroy();
}

if(tilemap_get_at_pixel(oPlayer.tilemap, bbox_left, bbox_top) != 0 || tilemap_get_at_pixel(oPlayer.tilemap, bbox_right, bbox_bottom) != 0){
	instance_destroy();
}