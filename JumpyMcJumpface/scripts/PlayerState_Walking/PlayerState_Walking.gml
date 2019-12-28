grounded = true;
grav();
left_right();
jumping();
player_object_collision(oDoor);
player_object_collision(oElevator);
player_object_collision(oThroughBlock);
player_tile_collision();
x+=hsp;
y+=vsp;

launch_x = x;
launch_y = y;

if(alarm[0] == -1){
	alarm[0] = 10;
}

player_state_check();

sprite_index = player_walking;
if(hsp<0){
	image_xscale = -1;
} else {
	image_xscale = 1;
}