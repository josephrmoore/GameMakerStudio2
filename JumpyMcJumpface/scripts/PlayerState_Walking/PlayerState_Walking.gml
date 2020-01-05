grounded = true;
player_state_check();
grav();
left_right();
jumping();
collisions();

x+=hsp;
y+=vsp;

launch_x = x;
launch_y = y;

if(alarm[0] == -1){
	alarm[0] = 10;
}

check_for_ending();

sprite_index = player_walking;
if(hsp<0){
	image_xscale = -1;
} else {
	image_xscale = 1;
}