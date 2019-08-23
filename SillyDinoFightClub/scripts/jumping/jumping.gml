// Jumping

if(key_jump){
	fighter_state = FIGHTERSTATES.JUMPING;
	vsp = -jump_speed;
}

if(y == 650 && fighter_state == FIGHTERSTATES.JUMPING){
	fighter_state = FIGHTERSTATES.IDLE;
}

//if (fighter_state == FIGHTERSTATES.JUMPING && key_jump_held) vsp = max(vsp, -jump_speed/4);

