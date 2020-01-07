player_state_check();
grav();
left_right();
jumping();
collisions();

pos();

check_for_ending();

sprite_index = player_jumping;
if(hsp<0){
	image_xscale = -1;
} else {
	image_xscale = 1;
}