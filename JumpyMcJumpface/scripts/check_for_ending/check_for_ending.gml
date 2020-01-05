if(x>=oGame.outro_trigger){
	player_state = PLAYERSTATE.IDLE;
	oGame.timeline_index = tLevelOutro;
	oGame.timeline_position = 0;
	oGame.timeline_running = true;
}

if(y >= room_height-60){
	die();
}