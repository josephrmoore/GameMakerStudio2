/// @description Insert description here
// You can write your code in this editor

if(place_meeting(x,y,oDoor) || place_meeting(x,y,oEnemy)){
	with(instance_create_layer(x,y,"Bullets",oExplosion)){
		creating_weapon = "missile";
		image_xscale = 2;
		image_yscale = image_xscale;
	}
	instance_destroy();
}

if(tilemap_get_at_pixel(oPlayer.tilemap, bbox_left, bbox_top) != 0 || tilemap_get_at_pixel(oPlayer.tilemap, bbox_right, bbox_bottom) != 0){
	with(instance_create_layer(x,y,"Bullets",oExplosion)){
		creating_weapon = "missile";
		image_xscale = 2;
		image_yscale = image_xscale;
	}
	instance_destroy();
}