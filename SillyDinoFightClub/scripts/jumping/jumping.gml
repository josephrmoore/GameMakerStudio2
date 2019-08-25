// Jumping

if(player_num == 1){
	if(key_p1_up){
		fighter_state = FIGHTERSTATES.JUMPING;
		vsp = -jump_speed;
	}
} if(player_num == 2){
	if(key_p2_up){
		fighter_state = FIGHTERSTATES.JUMPING;
		vsp = -jump_speed;
	}
}

//if(vsp == 0 && fighter_state == FIGHTERSTATES.JUMPING){
//	fighter_state = FIGHTERSTATES.IDLE;
//}

//if (fighter_state == FIGHTERSTATES.JUMPING && key_jump_held) vsp = max(vsp, -jump_speed/4);

