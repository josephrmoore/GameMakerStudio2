input();
if(!oGame.admin_controls){
	left_right();
	grav();
	jumping();
} else {
	admin_input();
}
fighter_tile_collision();

x = ceil(x+hsp);
y = ceil(y+vsp);



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