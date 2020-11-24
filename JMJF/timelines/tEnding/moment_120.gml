audio_stop_all();
audio_play_sound(aEndingCredits, 1000, true);
// start fireworks sequence
show_debug_message("fireworks");
layer_sequence_create("Fireworks", 320,180, sqFireworks);