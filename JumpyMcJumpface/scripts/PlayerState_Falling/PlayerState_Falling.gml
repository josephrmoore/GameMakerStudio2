grounded = false;
grav();
if(oPlayer.has_parachute){
	left_right();
}
collisions();

x+=hsp;
y+=vsp;

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
	sprite_index = player_parachute;
} else {
	sprite_index = player_falling;
}