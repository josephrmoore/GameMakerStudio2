with(instance_create_layer(x,y,"Enemies",oExplosion)){
	sprite_index = sExplosionEnemy;
}
audio_play_sound(sndEnemyDead, 1000, false);
drop_or_no();
instance_destroy();