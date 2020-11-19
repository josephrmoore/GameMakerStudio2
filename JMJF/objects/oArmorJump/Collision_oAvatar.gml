/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor

// play sound
audio_play_sound(aPowerup, 100, false);

// increase avatar jumps
oAvatar.armored = true;
oGame.armor_jump = true;

// destroy self

instance_destroy();