input();

switch(fighter_num){
	case FIGHTERS.TREX:
		sprite_index = sTRexJump;
		break;
	case FIGHTERS.TRICERATOPS:
		sprite_index = sTriJump;
		break;
	case FIGHTERS.STEGASAURUS:
		sprite_index = sStegJump;
		break;
	case FIGHTERS.BRONTO:
		sprite_index = sBrontoJump;
		break;
	case FIGHTERS.ANKLY:
		sprite_index = sAnklyJump;
		break;
}

grav();
//if(fighter_state == FIGHTERSTATES.JUMPING && y>=650){
//	fighter_state = FIGHTERSTATES.IDLE;
//}