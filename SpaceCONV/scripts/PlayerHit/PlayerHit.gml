function PlayerHit(argument0) {
	var damage = argument0;

	oPlayer.hp -= damage;

	flash = 3;

	audio_play_sound(sndPlayerHit, 1000, false);


}
