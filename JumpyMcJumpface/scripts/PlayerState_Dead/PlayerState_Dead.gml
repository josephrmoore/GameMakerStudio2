grav();
if(y <= room_height-60){
	collisions();
}

if(grounded){
	sprite_index = player_dead;
	hsp = 0;
} else {
	sprite_index = player_falling;
}

pos();


