with(instance_create_layer(x,y,"Bullets",oBullet)){
	firing_angle = other.firing_angle;
	spd = other.bullet_speed;
	axis = other.axis;
	wave_motion = other.wave_bullets;
	if(other.axis == 0){
		firing_angle = 270;
	} else {
		firing_angle = 0;
	}
//	speed = spd;
	speed = spd*oGame.DT;
	direction = firing_angle + random_range(-1,1);	
}
audio_play_sound(aShoot, 1000, false);