/// @description Insert description here
// You can write your code in this editor

// play sound
audio_play_sound(aPowerup, 100, false);

// increase avatar jumps
oAvatar.jSpeed = oAvatar.jSpeedHigh;
oGame.high_jump = true;

with(instance_create_layer(x, y,"Powerups",oPowerupText)){
	text_sprite = sHighText;
}

// destroy self

instance_destroy();