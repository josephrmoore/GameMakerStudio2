image_speed = 0;
image_index = 2;

if(key_block){
	input();
	grav();
	enemy_collision(oEnemy, 0.5);
} else {
	state = PLAYERSTATE.FREE;
}