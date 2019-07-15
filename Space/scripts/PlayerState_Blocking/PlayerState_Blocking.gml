if(key_block){
	input();
	grav();
	enemy_collision(oEnemy, 0.5);
} else {
	state = PLAYERSTATE.FREE;
}