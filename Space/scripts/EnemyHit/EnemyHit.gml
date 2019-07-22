var _damage = argument0;

hp -= _damage;

if(hp <= 0){
	enemy_state = ENEMYSTATE.DEAD;
}