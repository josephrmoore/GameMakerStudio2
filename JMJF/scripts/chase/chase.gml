function chase() {
	chasing = true;
	speed = chase_speed;
	//speed = chase_speed*oGame.DT;
	if(firing_angle == 0){
		if(oAvatar.y < y){
			direction = 90;
		} else {
			direction = 270;
		}
	} else if (firing_angle == 270){
		if(oAvatar.x < x){
			direction = 180;
		} else {
			direction = 0;
		}
	}


}
