player_state_check();
left_right();
jumping();
climb();
player_tile_collision();
x+=hsp;
y+=vsp;

launch_x = x;
launch_y = y;

if(alarm[1] == -1){
	alarm[1] = 10;
}

check_for_ending();

sprite_index = player_climbing;