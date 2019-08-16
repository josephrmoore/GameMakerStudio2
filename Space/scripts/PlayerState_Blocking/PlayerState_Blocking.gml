//image_speed = 0;
//image_index = 2;
if(!oController.is_paused){
	if(oController.key_block){
		grav();
		//player_enemy_collision(oEnemy, 0.5);
	} else {
		state = PLAYERSTATE.FREE;
	}

	sprite_index = sPlayer_blocking;
}