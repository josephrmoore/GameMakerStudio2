left_right();
//jumping();
if(!oPlayer.button_collision){
grav();
collisions();

pos();
}
player_state_check();
check_for_ending();

sprite_index = player_jumping;
if(hsp<0){
	image_xscale = -1;
} else {
	image_xscale = 1;
}