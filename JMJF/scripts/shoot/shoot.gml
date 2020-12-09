function shoot(argument0) {
	with(instance_create_layer(x,y,"Bullets",oBullet)){
		firing_angle = other.firing_angle;
		spd = other.bullet_speed;
		axis = other.axis;
		wave_motion = other.wave_bullets;
		growing = other.growing;
		if(other.axis == 0){
			// down
			firing_angle = 270;
		} else if(other.axis == 2){
			// right
			firing_angle = 180;
		} else if(other.axis == 3){
			// up
			firing_angle = 90;
		} else {
			// left
			firing_angle = 0;
		}
		speed = spd;
	//	speed = spd*oGame.DT;
		direction = firing_angle;	
	}
	if(argument0){
		audio_play_sound(aShoot, 1000, false);
	}


}
