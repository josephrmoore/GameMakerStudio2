/// @description Insert description here
// You can write your code in this editor
player_stats = ds_map_create();

upgrade_srs = ds_list_create();
mod_srs = ds_list_create();
energy_tank_srs = ds_list_create();
missile_upgrade_srs = ds_list_create();
//boss_srs = ds_list_create();
//breakable_srs = ds_list_create();

story_progress = STORY.FIRSTPLAY;

audio_group_load(Music);
audio_group_load(SFX);

music_gain = round(audio_sound_get_gain(Music)*100);
sfx_gain = round(audio_sound_get_gain(SFX)*100);

enum STORY {
	FIRSTPLAY,
	BEGIN,
	FOUND,
	AMBUSH,
	RUN,
	PARTS,
	PART1,
	PART2,
	PART3,
	TRAGEDY,
	EXTERMINTE,
	ESCAPE
}

enum SCREENSTATE {
	COLDOPEN,
	TITLE,
	DATA,
	GAME,
	PAUSED,
	OPTIONS,
	MODS,
	MAP,
	INVENTORY
}