if(x>=1740){
	player_state = PLAYERSTATE.IDLE;
	oGame.timeline_index = tLevelOutro;
	oGame.timeline_position = 0;
	oGame.timeline_running = true;
}