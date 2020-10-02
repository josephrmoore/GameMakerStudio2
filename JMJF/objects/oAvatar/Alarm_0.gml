/// @description Insert description here
// You can write your code in this editor
if(avatar_state == AVATARSTATE.WALKING){
	var w = audio_play_sound(aWalking, 10, false);
	audio_sound_pitch(w, random_range(0.8,2));
}

if(avatar_state == AVATARSTATE.LADDER && vsp != 0){
	var w = audio_play_sound(aLadder, 10, false);
	audio_sound_pitch(w, random_range(0.8,2));
}

if(avatar_state == AVATARSTATE.SLIDING){
	var w = audio_play_sound(aSliding, 10, false);
	audio_sound_pitch(w, random_range(0.8,2));
}

if(avatar_state == AVATARSTATE.FALLING){
	var w = audio_play_sound(aFalling, 10, false);
	audio_sound_pitch(w, random_range(0.8,2));
}