/// @description Insert description here
// You can write your code in this editor
sprite_index = sprite;

npc_state = NPCSTATE.HAPPY;
startX = x;
startY = y;

enum NPCSTATE {
	STILL,
	HAPPY,
	PANIC,
	DEAD,
	HELPING
}