audio_stop_all();
var inst = instance_place(oAvatar.x,oAvatar.y,oHazard);
if (inst != noone){
	audio_play_sound(aHazard, 90, false);
}
audio_play_sound(aDeath, 100, false);

//oGame.died_yet = true;
if(instance_exists(oCannon)){
	oCannon.activated = false;
	oCannon.is_paused = true;
}
//show_debug_message("0");