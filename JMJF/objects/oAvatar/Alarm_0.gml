/// @description Insert description here
// You can write your code in this editor
//show_debug_message("alarm0");
//show_debug_message(oAvatar.avatar_state);
if(avatar_state == AVATARSTATE.WALKING){
//	show_debug_message("walking");
	var w = audio_play_sound(aWalking, 10, false);
	audio_sound_pitch(w, random_range(0.8,2));
}

if(avatar_state == AVATARSTATE.LADDER && vsp != 0){
	var w = audio_play_sound(aLadder, 10, false);
	audio_sound_pitch(w, random_range(0.8,2));
}

if(avatar_state == AVATARSTATE.SLIDING){
	if(!audio_is_playing(aSliding)){
		var w = audio_play_sound(aSliding, 10, false);
		audio_sound_pitch(w, random_range(0.8,2));
	}
}

if(avatar_state == AVATARSTATE.VINE){
	if(!audio_is_playing(aVine)){
		var w = audio_play_sound(aVine, 10, false);
		audio_sound_pitch(w, random_range(0.8,2));
	}
}

if(avatar_state == AVATARSTATE.FALLING){
	if(!audio_is_playing(aFalling)){
		var w = audio_play_sound(aFalling, 10, false);
		audio_sound_pitch(w, random_range(0.8,2));
	}
}