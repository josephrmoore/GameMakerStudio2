/// @description Insert description here
// You can write your code in this editor

// play sound
audio_play_sound(aPowerup, 100, false);

// increase avatar jumps
oGame.double_jump = true;
oAvatar.max_jumps = 2;

// destroy self

instance_destroy();