/// @description Insert description here
// You can write your code in this editor
player_stats = ds_map_create();

audio_group_load(Music);
audio_group_load(SFX);

if(room_get_name(room) == "init"){
	room_goto_next();
}
