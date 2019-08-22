/// @description Insert description here
// You can write your code in this editor
switch(fighter_state){
	case FIGHTERSTATES.IDLE:
		FighterState_Idle();
		break;
	case FIGHTERSTATES.WALKING:
		FighterState_Walking();
		break;
	case FIGHTERSTATES.JUMPING:
		FighterState_Jumping();
		break;
	case FIGHTERSTATES.JUMPATTACK:
		FighterState_JumpAttack();
		break;
	case FIGHTERSTATES.DUCKING:
		FighterState_Ducking();
		break;
	case FIGHTERSTATES.ATTACK1:
		FighterState_Attack1();
		break;
	case FIGHTERSTATES.ATTACK2:
		FighterState_Attack2();
		break;
	case FIGHTERSTATES.ATTACK3:
		FighterState_Attack3();
		break;
}