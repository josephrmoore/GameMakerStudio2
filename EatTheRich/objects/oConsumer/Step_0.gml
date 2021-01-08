/// @description Insert description here
// You can write your code in this editor

switch(consumer_state){
	case CONSUMERSTATE.IDLE:
		ConsumerState_Idle();
		break;
	case CONSUMERSTATE.ATTACKING:
		ConsumerState_Attacking();
		break;
	case CONSUMERSTATE.DEAD:
		ConsumerState_Dead();
		break;
}