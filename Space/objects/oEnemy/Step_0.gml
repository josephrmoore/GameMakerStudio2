/// @description Insert description here
// You can write your code in this editor

switch (enemy_state) {
	case ENEMYSTATE.STATIONARY: EnemyState_Stationary();
		break;
	case ENEMYSTATE.DEAD: EnemyState_Dead();
		break;
	case ENEMYSTATE.SHOOTING: EnemyState_Shooting();
		break;
	case ENEMYSTATE.WALKING: EnemyState_Walking();
		break;
	case ENEMYSTATE.FLYING: EnemyState_Flying();
		break;
	case ENEMYSTATE.JUMPING: EnemyState_Jumping();
		break;
}