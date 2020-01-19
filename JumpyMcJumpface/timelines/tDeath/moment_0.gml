audio_stop_all();
audio_play_sound(aDeath, 100, false);
oGame.died_yet = true;
if(object_exists(oCannon)){
	oCannon.activated = false;
}