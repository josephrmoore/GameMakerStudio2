/// @description Insert description here
// You can write your code in this editor
player_stats = ds_map_create();

player_upgrades = ds_list_create();
player_mods = ds_list_create();
player_mods_activated = ds_list_create();

upgrade_srs = ds_list_create();
mod_srs = ds_list_create();
energy_tank_srs = ds_list_create();
missile_upgrade_srs = ds_list_create();
//boss_srs = ds_list_create();
//breakable_srs = ds_list_create();

story_progress = STORY.FIRSTPLAY;

global.map_visited = [];
global.map_visited_grid = ds_grid_create(69,136);

for(var i=0; i<136; i++){
	for(var j=0; j<69; j++){
		ds_grid_add(global.map_visited_grid, j, i, false);
		global.map_visited[j, i] = false;
	}
}

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
	ESCAPE,
	size
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
	INVENTORY,
	size
}

enum PLAYERUPGRADES {
	MISSILES,
	HOOK,
	DOUBLEJUMP,
	DASH,
	SPREAD,
	WAVE,
	BOMB,
	SCREWATTACK,
	ORBSLASH,
	MODSYSTEM,
	size
}

enum PLAYERMODS {
	TURBO,
	TRIPLEJUMP,
	DOUBLEDASH,
	TRIPLEDASH,
	STRONGSLASH,
	LONGSLASH,
	STICKYHANG,
	SLOWFALL,
	SMALLAVATAR,
	SHARPDASH,
	REGEN,
	SHIELD,
	SUPERBOMB,
	CLUSTERMISSILES,
	size
}