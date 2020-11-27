/// @description Insert description here
// You can write your code in this editor

switch (npc_state) {
	case NPCSTATE.STILL: NPCState_Still();
		break;
	case NPCSTATE.DEAD: NPCState_Dead();
		break;
	case NPCSTATE.PANIC: NPCState_Panic();
		break;
	case NPCSTATE.HAPPY: NPCState_Happy();
		break;
	case NPCSTATE.HELPING: NPCState_Helping();
		break;
}