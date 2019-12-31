grounded = false;
grav();
left_right();
jumping();

player_tile_collision();
player_object_collision(oDoor);
player_object_collision(oElevator);
player_object_collision(oThroughBlock);
x+=hsp;
y+=vsp;

player_state_check();

sprite_index = player_jumping;
if(hsp<0){
	image_xscale = -1;
} else {
	image_xscale = 1;
}