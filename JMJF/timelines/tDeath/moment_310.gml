//room_restart();
// need custom restart to skip rising part
if(object_exists(oCannon)){
	oCannon.activated = true;
	oCannon.is_paused = false;
}
//oPlayer.x = oElevator.x + 60;
//oPlayer.y = oElevator.y - 15;
oAvatar.avatar_state = AVATARSTATE.IDLE;
//oPlayer.launch_x = oPlayer.x;
//oPlayer.launch_y = oPlayer.y;
room_music();
