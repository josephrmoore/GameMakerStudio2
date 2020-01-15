left_right();
//jumping();
if(!oPlayer.button_collision){
	grav();
	collisions();
	pos();
}
check_for_ending();
player_state_check();

sprite_index = player_idle;