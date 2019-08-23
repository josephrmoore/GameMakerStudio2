var bottom_bound = 650;

//if(hsp==0){
//	fighter_state = FIGHTERSTATES.IDLE;
//} else {
//	fighter_state = FIGHTERSTATES.WALKING;
//}


vsp += grv;
show_debug_message(vsp);
show_debug_message(y);
x += hsp;
y = clamp(y+vsp, 0, bottom_bound);

if(y == bottom_bound){
	vsp = 0;
}
show_debug_message(y);