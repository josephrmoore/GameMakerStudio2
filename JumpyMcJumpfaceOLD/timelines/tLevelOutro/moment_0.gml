oPlayer.rising = true;
oPlayer.controllable = false;
oElevatorOutro.moving = true;
audio_stop_all();
audio_play_sound(aLevelOutro,100,false);
if(object_exists(oCannon)){
	oCannon.activated = false;
}
instance_destroy(oBullet);
oGame.show_gui = false;
oGame.died_yet = false;