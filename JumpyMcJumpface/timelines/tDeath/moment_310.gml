//room_restart();
// need custom restart to skip rising part
if(object_exists(oCannon)){
	oCannon.activated = true;
}
oPlayer.x = oElevator.x + 60;
oPlayer.y = oElevator.y - 15;
oPlayer.player_state = PLAYERSTATE.IDLE;
oPlayer.launch_x = oPlayer.x;
oPlayer.launch_y = oPlayer.y;
room_music();
