input();

if(key_left){
	facing = -1;
}

if(key_right){
	facing = 1;
}

// Blocking

if(key_block && location == PLAYERLOCATION.GROUNDED) state = PLAYERSTATE.BLOCKING;

if(key_down && location == PLAYERLOCATION.GROUNDED) state = PLAYERSTATE.DUCKING;

// Slashing

if(key_slash){ 
	state = PLAYERSTATE.SLASHING;
}

// Dashing

if(key_dash && can_dash && alarm[1] == -1 && (dashes < max_dashes)){
	++dashes;
	state = PLAYERSTATE.DASHING;
	alarm[1] = 10;
}

left_right();
grav();
jumping();

player_tile_collision();
player_enemy_collision(oEnemy, 1);
player_object_collision(oDoor);

// Apply speeds to position

x += hsp;
y += vsp;

image_xscale = facing;

if(has_small_avatar){
	image_xscale = 0.5;
	image_yscale = image_xscale;
}