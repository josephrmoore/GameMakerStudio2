/// @description Insert description here
// You can write your code in this editor

enum PLAYERSTATE {
	IDLE,
	WALKING,
	JUMPING,
	CLIMBING,
	FALLING,
	SWINGING,
	SLIDING,
	DEAD
}

player_state = PLAYERSTATE.IDLE;
launch_x = x;
launch_y = y+1000;

if(oGame.current_room == "level4"){
	lvl4_tilemaps[0] = layer_tilemap_get_id("button1");
	lvl4_tilemaps[1] = layer_tilemap_get_id("button2");
	lvl4_tilemaps[2] = layer_tilemap_get_id("button3");
	lvl4_tilemaps[3] = layer_tilemap_get_id("button4");
	lvl4_tilemaps[4] = layer_tilemap_get_id("button5");
	lvl4_tilemaps[5] = layer_tilemap_get_id("button6");
	lvl4_tilemaps[6] = layer_tilemap_get_id("button7");
	lvl4_tilemaps[7] = layer_tilemap_get_id("button8");
}