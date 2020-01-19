//if(oGame.current_room == "mainMenu"){
//	timeline_position = 421;
//} else {
	oPlayer.controllable = false;
	oPlayer.rising = true;
	oElevator.moving = true;
	if(oGame.current_room == "level9"){
		audio_play_sound(aLevel9intro,100,false);
	} else {
		audio_play_sound(aLevelIntro,100,false);
	}
	if(object_exists(oCannon)){
		oCannon.activated = false;
	}
	oGame.level_title_showing = true;
//}