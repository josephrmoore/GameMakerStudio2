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

player_state_check();

sprite_index = player_idle;