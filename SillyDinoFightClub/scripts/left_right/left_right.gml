/// @description Left & Right motion calculation

if(player_num == 1){
	if(key_p1_left){
	    hsp = approach(hsp,-mSpeed,aSpeed);
		fighter_state = FIGHTERSTATES.WALKING;
		image_xscale = 1;
	}else if(key_p1_right){
	    hsp = approach(hsp,mSpeed,aSpeed);
		fighter_state = FIGHTERSTATES.WALKING;
		image_xscale = -1;
	}else if (vsp>grv || vsp < 0){
		fighter_state = FIGHTERSTATES.JUMPING;
	} else {
		hsp = approach(hsp,0,dSpeed);
		fighter_state = FIGHTERSTATES.IDLE;
	}
} else if (player_num == 2){
	if(key_p2_left){
	    hsp = approach(hsp,-mSpeed,aSpeed);
		fighter_state = FIGHTERSTATES.WALKING;
		image_xscale = 1;
	}else if(key_p2_right){
	    hsp = approach(hsp,mSpeed,aSpeed);
		fighter_state = FIGHTERSTATES.WALKING;
		image_xscale = -1;
	}else if(vsp>grv || vsp < 0){
		fighter_state = FIGHTERSTATES.JUMPING;
	} else {
		hsp = approach(hsp,0,dSpeed);
		fighter_state = FIGHTERSTATES.IDLE;
	}
}