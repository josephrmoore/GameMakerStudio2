//room_restart();
// need custom restart to skip rising part
//show_debug_message("310");
if(instance_exists(oCannon)){
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
	//audio_stop_all();
	//oGame.restart_screen = true;
	//room_restart();
	oGame.is_paused = true;
	pause_everything(oGame.is_paused);
	with(instance_create_layer(160,220,"Menus",oMenu)){
		menu_id = MENUS.RESTART;
	}
}

oGame.current_lives = oAvatar.lives_left;
//oPlayer.x = oElevator.x + 60;
//oPlayer.y = oElevator.y - 15;

//oPlayer.launch_x = oPlayer.x;
//oPlayer.launch_y = oPlayer.y;

