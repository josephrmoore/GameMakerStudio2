grav();
left_right();
jumping();
collisions();

x+=hsp;
y+=vsp;

check_for_ending();
player_state_check();

sprite_index = player_jumping;
if(hsp<0){
	image_xscale = -1;
} else {
	image_xscale = 1;
}