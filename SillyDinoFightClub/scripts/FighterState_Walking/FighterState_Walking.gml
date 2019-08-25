input();
left_right();
grav();
jumping();
fighter_tile_collision();

x += floor(hsp);
y += floor(vsp);

switch(fighter_num){
	case FIGHTERS.TREX:
		sprite_index = sTRexWalk;
		break;
	case FIGHTERS.TRICERATOPS:
		sprite_index = sTriWalk;
		break;
	case FIGHTERS.STEGASAURUS:
		sprite_index = sStegWalk;
		break;
	case FIGHTERS.BRONTO:
		sprite_index = sBrontoWalk;
		break;
	case FIGHTERS.ANKLY:
		sprite_index = sAnklyWalk;
		break;
}

