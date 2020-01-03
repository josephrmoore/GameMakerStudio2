left_right();
jumping();
if(place_meeting(x,y,oLadder)){
	climb();
} else {
	grav();
}
player_tile_collision();
x+=hsp;
y+=vsp;

launch_x = x;
launch_y = y;

if(alarm[1] == -1){
	alarm[1] = 10;
}

check_for_ending();
player_state_check();

sprite_index = player_climbing;