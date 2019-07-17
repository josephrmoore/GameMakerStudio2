input();

if(has_small_avatar){
	image_xscale = 0.5;
	image_yscale = image_xscale;
}

if(key_left){
	facing = -1;
}

if(key_right){
	facing = 1;
}

// Blocking

if(key_block && grounded) state = PLAYERSTATE.BLOCKING;

if(key_down && grounded) state = PLAYERSTATE.DUCKING;

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

//var walk_index_start = 3;
//var walk_index_end = 5;
//if(hsp != 0){
//	image_speed = 1;
//	if(image_index < walk_index_start || image_index > walk_index_end){
//		image_index = walk_index_start;
//	} else if (image_index == walk_index_end){
//		image_speed = 0;
//	}
//} else {
//	image_index = 0;
//	image_speed = 0;
//}

image_xscale = facing;

// Apply speeds to position

x += hsp;
y += vsp;