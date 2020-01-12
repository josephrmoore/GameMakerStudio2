grounded = true;
left_right();
//jumping();

if(!oPlayer.button_collision){
grav();
collisions();

pos();
}
launch_x = x;
launch_y = y;

if(alarm[0] == -1){
	alarm[0] = 10;
}

player_state_check();
check_for_ending();

sprite_index = player_walking;
if(hsp<0){
	image_xscale = -1;
} else {
	image_xscale = 1;
}