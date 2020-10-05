function die() {
	oAvatar.avatar_state = AVATARSTATE.DEAD;
	audio_play_sound(aDead, 1000, false);
	oGame.timeline_index = tDeath;
	oGame.timeline_position = 0;
	oGame.timeline_running = true;
	instance_destroy(oBullet);
	//if(lives>0){
	//	// reset avatar position, restart cannons & music
	//	resurrect();
	//	lives--;
	//} else {
	//	// restart or quit options
	//	death_screen();
	//}
}
