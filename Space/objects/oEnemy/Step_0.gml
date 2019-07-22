/// @description Insert description here
// You can write your code in this editor

switch (enemy_state) {
	case ENEMYSTATE.FREE: EnemyState_Free();
		break;
	case ENEMYSTATE.DEAD: EnemyState_Dead();
		break;
	case ENEMYSTATE.SHOOTING: EnemyState_Shooting();
		break;
	case ENEMYSTATE.WALKING: EnemyState_Walking();
		break;
}