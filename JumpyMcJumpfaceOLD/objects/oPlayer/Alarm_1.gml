/// @description Insert description here
// You can write your code in this editor

if(oGame.move_down || oGame.move_up){
	var l = audio_play_sound(aLadder, 10, false);
	audio_sound_pitch(l, random_range(0.8,2));
}