/// @description Insert description here
// You can write your code in this editor

/// @description Insert description here
// You can write your code in this editor

x = oPlayer.x;
y = oPlayer.y;

if(oPlayer.has_turbo && oPlayer.mod_turbo){
	oController.key_shoot = oController.key_shoot_auto;
}


//show_debug_message(shoot);

if(oController.key_left){
	gun_dir = 180;
	if(oPlayer.location == PLAYERLOCATION.HANGING){
		gun_dir = 0;
	}
}

if(oController.key_right){
	gun_dir = 0;
	if(oPlayer.location == PLAYERLOCATION.HANGING){
		gun_dir = 180;
	}
}

if(oController.key_up){
	if(oController.key_right){
		image_angle = 45;
	} else if(oController.key_left){
		image_angle = 135;
	} else {
		image_angle = 90;
	}
} else {
	if(oPlayer.location == PLAYERLOCATION.AIRBORNE && oController.key_down){
		if(oController.key_left){
			image_angle = 225;
		} else if(oController.key_right){
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

if(oController.key_bomb && oPlayer.has_bombs && bomb_delay<0 && !oController.is_paused){
	bomb_delay = 20;
	audio_play_sound(sndBomb, 5, false);
	instance_create_layer(x,y,"Bombs",oBomb);
}


if(oController.key_missile && oPlayer.has_missiles && oPlayer.missiles > 0 && missile_delay<0 && !oController.is_paused){
	missile_delay = 40;
	audio_play_sound(sndMissile, 5, false);
	with(instance_create_layer(x,y,"Bullets",oMissile)){
		speed = bullet_speed;
		direction = other.image_angle + random_range(-1,1);
		image_angle = other.image_angle;
		oPlayer.missiles -= 1;
	}
}

if(oController.key_shoot && firing_delay<0 && oPlayer.state == PLAYERSTATE.FREE && !oController.is_paused){
	firing_delay = 5;
	audio_play_sound(sndShootSoft, 5, false);
	if(oPlayer.has_spread && oPlayer.has_wave){
		with(instance_create_layer(x,y,"Bullets",oSpreadWave)){
			speed = bullet_speed;
			direction = other.image_angle - 30 + random_range(-1,1);	
		}
		with(instance_create_layer(x,y,"Bullets",oSpreadWave)){
			speed = bullet_speed;
			direction = other.image_angle - 15 + random_range(-1,1);	
		}
		with(instance_create_layer(x,y,"Bullets",oSpreadWave)){
			speed = bullet_speed;
			direction = other.image_angle + random_range(-1,1);	
		}
		with(instance_create_layer(x,y,"Bullets",oSpreadWave)){
			speed = bullet_speed;
			direction = other.image_angle + 15 + random_range(-1,1);	
		}
		with(instance_create_layer(x,y,"Bullets",oSpreadWave)){
			speed = bullet_speed;
			direction = other.image_angle + 30 + random_range(-1,1);	
		}
	} else if(oPlayer.has_spread){
		with(instance_create_layer(x,y,"Bullets",oSpread)){
			speed = bullet_speed;
			direction = other.image_angle - 30 + random_range(-1,1);	
		}
		with(instance_create_layer(x,y,"Bullets",oSpread)){
			speed = bullet_speed;
			direction = other.image_angle - 15 + random_range(-1,1);	
		}
		with(instance_create_layer(x,y,"Bullets",oSpread)){
			speed = bullet_speed;
			direction = other.image_angle + random_range(-1,1);	
		}
		with(instance_create_layer(x,y,"Bullets",oSpread)){
			speed = bullet_speed;
			direction = other.image_angle + 15 + random_range(-1,1);	
		}
		with(instance_create_layer(x,y,"Bullets",oSpread)){
			speed = bullet_speed;
			direction = other.image_angle + 30 + random_range(-1,1);	
		}
	} else if (oPlayer.has_wave){
		// add wave function to direction
		with(instance_create_layer(x,y,"Bullets",oWave)){
			speed = bullet_speed;
			direction = other.image_angle + random_range(-1,1);	
		}
	} else {
		with(instance_create_layer(x,y,"Bullets",oBullet)){
			speed = bullet_speed;
			direction = other.image_angle + random_range(-1,1);	
		}
	}
}