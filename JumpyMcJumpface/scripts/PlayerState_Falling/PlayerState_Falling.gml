if(oPlayer.has_parachute){
	left_right();
}
grav();
collisions();

pos();

if(grounded){
	if(oPlayer.has_parachute){
		player_state = PLAYERSTATE.IDLE;
		launch_x = x;
		launch_y = y;
	} else {
		die();
	}
}

if(oPlayer.has_parachute){
	sprite_index = player_idle;
	draw_sprite(player_parachute,-1,oPlayer.x,(oPlayer.y-(oPlayer.sprite_height/2)));
} else {
	sprite_index = player_falling;
}