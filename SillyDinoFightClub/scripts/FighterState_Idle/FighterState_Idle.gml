input();
left_right();
jumping();

switch(fighter_num){
	case FIGHTERS.TREX:
		sprite_index = sTRexIdle;
		break;
	case FIGHTERS.TRICERATOPS:
		sprite_index = sTriIdle;
		break;
	case FIGHTERS.STEGASAURUS:
		sprite_index = sStegIdle;
		break;
	case FIGHTERS.BRONTO:
		sprite_index = sBrontoIdle;
		break;
	case FIGHTERS.ANKLY:
		sprite_index = sAnklyIdle;
		break;
}
grav();