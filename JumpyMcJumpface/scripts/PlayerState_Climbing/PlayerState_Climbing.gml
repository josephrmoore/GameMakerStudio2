left_right();
//jumping();
climb();
player_tile_collision();

pos();

launch_x = x;
launch_y = y;

if(alarm[1] == -1){
	alarm[1] = 10;
}

player_state_check();
check_for_ending();

sprite_index = player_climbing;