if(oGame.current_room != "level9"){
	oPlayer.controllable = true;
	oPlayer.rising = false;
	oElevator.moving = false;
	oCannon.activated = true;
	oGame.level_title_showing = false;
	oGame.show_gui = true;
	room_music();
	timeline_position = 420;
}