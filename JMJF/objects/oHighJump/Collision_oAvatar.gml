/// @description Insert description here
// You can write your code in this editor

// play sound
audio_play_sound(aPowerup, 100, false);

// increase avatar jumps
oAvatar.jSpeed = oAvatar.jSpeedHigh;

// destroy self

instance_destroy();