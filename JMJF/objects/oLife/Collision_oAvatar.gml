/// @description Insert description here
// You can write your code in this editor
oAvatar.lives_left++;
if(!audio_is_playing(aPowerup)){
	audio_play_sound(aPowerup,100,false)
}

with(instance_create_layer(x, y,"Powerups",oPowerupText)){
	text_sprite = sLifeText;
}
instance_destroy();