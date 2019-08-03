var _damage = argument0;

hp -= _damage;

flash = 3;

if(hp <= 0){
	enemy_state = ENEMYSTATE.DEAD;
}

audio_play_sound(sndEnemyHit, 1000, false);