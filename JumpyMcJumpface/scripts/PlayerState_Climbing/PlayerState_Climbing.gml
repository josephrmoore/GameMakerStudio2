grounded = false;
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

player_state_check();

sprite_index = player_climbing;