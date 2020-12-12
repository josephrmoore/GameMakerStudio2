game_state = GAMESTATE.LEVELINTRO;
audio_stop_all();
lose_control();
if(room_get_name(room) == "level9"){
	audio_play_sound(aLevel9Intro, 100, false);
} else {
	audio_play_sound(aLevelIntro, 100, false);
}