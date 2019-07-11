if Audio { if !audio_is_playing(argument0) audio_play_sound(argument0, 1, 0);
    else { audio_stop_sound(argument0); audio_play_sound(argument0, 1, 0); } }
