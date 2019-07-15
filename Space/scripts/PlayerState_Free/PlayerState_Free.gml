input();

if(has_slow_fall){
	grv = 0.05;
}

if(has_small_avatar){
	image_xscale = 0.5;
	image_yscale = image_xscale;
}

// Determing hanging gravity

if(sticky_hang){
	hang_grv = 0;
}

// Set "facing" var

if(key_left){
	facing = -1;
}

if(key_right){
	facing = 1;
}

// Blocking

if(key_block && grounded) state = PLAYERSTATE.BLOCKING;

// Slashing

if(key_slash) state = PLAYERSTATE.SLASHING;

// Dashing

if(key_dash && alarm[1] == -1 && (dashes < max_dashes)){
	++dashes;
	state = PLAYERSTATE.DASHING;
	alarm[1] = 10;
}

left_right();
grav();
jumping();

player_collision();
if(vsp > 0){
	grounded = false;
}
enemy_collision(oEnemy, 1);
object_collision(oDoor);

// Apply speeds to position

x += hsp;
y += vsp;


// Shooting

if(key_one){
	has_wave = false;
	has_spread = false;
}

if(key_two){
	has_wave = false;
	has_spread = true;
}

if(key_three){
	has_wave = true;
	has_spread = false;
}

if(key_four){
	has_wave = true;
	has_spread = true;
}

if(key_five){
	if(has_turbo){
		has_turbo = false;
	} else {
		has_turbo = true;
	}
}

if(has_turbo){
	key_shoot = key_shoot_auto;
}


// Missile



// Bomb



// Sprite Animation

