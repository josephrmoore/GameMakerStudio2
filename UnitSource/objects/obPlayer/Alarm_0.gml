if Help Enable=1

if !audio_is_playing(audioMusic[1]) and Enable and Music and Disable {
   audio_play_sound(audioMusic[1], 15, 0)
   audio_sound_gain(audioMusic[1], 1, 0)
}

audio_stop_sound(fxPrepare)

