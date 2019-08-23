/// @description Left & Right motion calculation

if(key_walk_left){
    hsp = approach(hsp,-mSpeed,aSpeed);
	fighter_state = FIGHTERSTATES.WALKING;
	image_xscale = 1;
}else if(key_walk_right){
    hsp = approach(hsp,mSpeed,aSpeed);
	fighter_state = FIGHTERSTATES.WALKING;
	image_xscale = -1;
}else{
    hsp = approach(hsp,0,dSpeed);
	fighter_state = FIGHTERSTATES.IDLE;
}