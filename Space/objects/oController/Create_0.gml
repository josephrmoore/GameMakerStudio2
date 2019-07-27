/// @description Insert description here
// You can write your code in this editor
if(room_get_name(room) == "init"){
	room_goto_next();
}

player_stats = ds_map_create();