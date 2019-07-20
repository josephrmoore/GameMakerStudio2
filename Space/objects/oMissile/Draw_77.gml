/// @description Insert description here
// You can write your code in this editor

if(place_meeting(x,y,oDoor) || place_meeting(x,y,oEnemy)){
	with(instance_create_layer(x,y,"Bullets",oExplosion)){
		creating_weapon = "missile";
		image_xscale = 2;
		image_yscale = image_xscale;
	}
	if(oPlayer.has_cluster_missiles){
		for(var i=0; i<3; i++){
			with(instance_create_layer(x+random_range(-100,100),y+random_range(-50,50),"Bullets",oExplosion)){
				creating_weapon = "bomb";
			}
		}
	}
	instance_destroy();
}

if(tilemap_get_at_pixel(oPlayer.tilemap, bbox_left, bbox_top) != 0 || tilemap_get_at_pixel(oPlayer.tilemap, bbox_right, bbox_bottom) != 0){
	with(instance_create_layer(x,y,"Bullets",oExplosion)){
		creating_weapon = "missile";
		image_xscale = 2;
		image_yscale = image_xscale;
	}
	if(oPlayer.has_cluster_missiles){
		for(var i=0; i<3; i++){
			with(instance_create_layer(x+random_range(-100,100),y+random_range(-50,50),"Bullets",oExplosion)){
				creating_weapon = "bomb";
			}
		}
	}
	instance_destroy();
}