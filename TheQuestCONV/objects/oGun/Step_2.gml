/// @description Insert description here
// You can write your code in this editor
x = oPlayer.x;
y = oPlayer.y;

gun_dir = oPlayer.compass*90;
image_angle = gun_dir;

--firing_delay;

if(oPlayer.key_shoot && firing_delay<0 && !oBrain.no_control){
	firing_delay = 5;
	with(instance_create_layer(x,y,"Instances",oBullet)){
		speed = bullet_speed;
		direction = other.image_angle + random_range(-1,1);	
	}
}