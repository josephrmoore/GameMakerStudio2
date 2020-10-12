function die() {
	oAvatar.avatar_state = AVATARSTATE.DEAD;
	audio_play_sound(aDead, 1000, false);
	start_timeline(tDeath);
	instance_destroy(oBullet);
}
