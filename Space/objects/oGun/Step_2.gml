/// @description Insert description here
// You can write your code in this editor

/// @description Insert description here
// You can write your code in this editor

x = oPlayer.x;
y = oPlayer.y;

var key_left = oPlayer.key_left;
var key_right =oPlayer.key_right;
var key_up = oPlayer.key_up;
var key_down = oPlayer.key_down;
var shoot = oPlayer.key_shoot;
var missile = oPlayer.key_missile;
var bomb = oPlayer.key_bomb;

var has_spread = oPlayer.has_spread;
var has_wave = oPlayer.has_wave;




//show_debug_message(shoot);

if(key_left){
	gun_dir = 180;
}

if(key_right){
	gun_dir = 0;
}

if(key_up){
	if(key_right){
		image_angle = 45;
	} else if(key_left){
		image_angle = 135;
	} else {
		image_angle = 90;
	}
} else {
	if(!oPlayer.grounded && key_down){
		if(key_left){
			image_angle = 225;
		} else if(key_right){
			image_angle = 315;
		} else {
			image_angle = 270;
		}
	} else {
		image_angle = gun_dir;
	}
}

--firing_delay;
--missile_delay;
--bomb_delay;

if(bomb && bomb_delay<0){
	bomb_delay = 60;
	instance_create_layer(x,y,"Bullets",oBomb);
}


if(missile && missile_delay<0){
	missile_delay = 40;
	with(instance_create_layer(x,y,"Bullets",oMissile)){
		speed = other.bullet_speed/1.5;
		direction = other.image_angle + random_range(-1,1);
		image_angle = other.image_angle;
	}
}

if(shoot && firing_delay<0){
	firing_delay = 5;
	if(has_spread && has_wave){
		with(instance_create_layer(x,y,"Bullets",oSpreadWave)){
			speed = other.bullet_speed;
			direction = other.image_angle - 30 + random_range(-1,1);	
		}
		with(instance_create_layer(x,y,"Bullets",oSpreadWave)){
			speed = other.bullet_speed;
			direction = other.image_angle - 15 + random_range(-1,1);	
		}
		with(instance_create_layer(x,y,"Bullets",oSpreadWave)){
			speed = other.bullet_speed;
			direction = other.image_angle + random_range(-1,1);	
		}
		with(instance_create_layer(x,y,"Bullets",oSpreadWave)){
			speed = other.bullet_speed;
			direction = other.image_angle + 15 + random_range(-1,1);	
		}
		with(instance_create_layer(x,y,"Bullets",oSpreadWave)){
			speed = other.bullet_speed;
			direction = other.image_angle + 30 + random_range(-1,1);	
		}
	} else if(has_spread){
		with(instance_create_layer(x,y,"Bullets",oSpread)){
			speed = other.bullet_speed;
			direction = other.image_angle - 30 + random_range(-1,1);	
		}
		with(instance_create_layer(x,y,"Bullets",oSpread)){
			speed = other.bullet_speed;
			direction = other.image_angle - 15 + random_range(-1,1);	
		}
		with(instance_create_layer(x,y,"Bullets",oSpread)){
			speed = other.bullet_speed;
			direction = other.image_angle + random_range(-1,1);	
		}
		with(instance_create_layer(x,y,"Bullets",oSpread)){
			speed = other.bullet_speed;
			direction = other.image_angle + 15 + random_range(-1,1);	
		}
		with(instance_create_layer(x,y,"Bullets",oSpread)){
			speed = other.bullet_speed;
			direction = other.image_angle + 30 + random_range(-1,1);	
		}
	} else if (has_wave){
		// add wave function to direction
		with(instance_create_layer(x,y,"Bullets",oWave)){
			speed = other.bullet_speed;
			direction = other.image_angle + random_range(-1,1);	
		}
	} else {
		with(instance_create_layer(x,y,"Bullets",oBullet)){
			speed = other.bullet_speed;
			direction = other.image_angle + random_range(-1,1);	
		}
	}
}

