//room_restart();
// need custom restart to skip rising part
if(object_exists(oCannon)){
	oCannon.activated = true;
	oCannon.is_paused = false;
}
room_music();
if(oAvatar.lives_left>0){
	//	// reset avatar position, restart cannons & music
	//	resurrect();
	avatar_position_reset();
	oAvatar.lives_left--;
	oAvatar.avatar_state = AVATARSTATE.IDLE;
} else {
	//	// restart or quit options
	//	death_screen();
	audio_stop_all();
	oGame.restart_screen = true;
//	room_restart();
}
//oPlayer.x = oElevator.x + 60;
//oPlayer.y = oElevator.y - 15;

//oPlayer.launch_x = oPlayer.x;
//oPlayer.launch_y = oPlayer.y;

