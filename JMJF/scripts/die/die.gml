function die() {
	oAvatar.avatar_state = AVATARSTATE.DEAD;
	start_timeline(tDeath);
	instance_destroy(oBullet);
//	show_debug_message("die");
}
