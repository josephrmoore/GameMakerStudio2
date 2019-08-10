/// @description Insert description here
// You can write your code in this editor
player_stats = ds_map_create();

//upgrade_srs = [];
//mod_srs = [];
//energy_tank_srs = [];
//missile_upgrade_srs = [];
//boss_srs = [];
//breakable_srs = [];

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

enum SECTIONS {
	PLAINS,
	MOUNTAINS,
	VALLEY,
	LABORATORY,
	OCEAN,
	TUNNELS,
	CAVES,
	JUNGLE,
	JUNKPIT,
	SECRET,
	DESCENT,
	LAVA,
	LAVAMONSTER,
	NEST,
	QUEENSLAIR
}




//upgrade_list = ds_list_create();

//var u1map = ds_map_create();
//var u2map = ds_map_create();
//var u3map = ds_map_create();
//var u4map = ds_map_create();
//var u5map = ds_map_create();
//var u6map = ds_map_create();
//var u7map = ds_map_create();
//var u8map = ds_map_create();
//var u9map = ds_map_create();
//var u10map = ds_map_create();

//ds_list_add(upgrade_list, u1map);
//ds_list_mark_as_map(upgrade_list, ds_list_size(upgrade_list)-1);
//ds_list_add(upgrade_list, u2map);
//ds_list_mark_as_map(upgrade_list, ds_list_size(upgrade_list)-1);
//ds_list_add(upgrade_list, u3map);
//ds_list_mark_as_map(upgrade_list, ds_list_size(upgrade_list)-1);
//ds_list_add(upgrade_list, u4map);
//ds_list_mark_as_map(upgrade_list, ds_list_size(upgrade_list)-1);
//ds_list_add(upgrade_list, u5map);
//ds_list_mark_as_map(upgrade_list, ds_list_size(upgrade_list)-1);
//ds_list_add(upgrade_list, u6map);
//ds_list_mark_as_map(upgrade_list, ds_list_size(upgrade_list)-1);
//ds_list_add(upgrade_list, u7map);
//ds_list_mark_as_map(upgrade_list, ds_list_size(upgrade_list)-1);
//ds_list_add(upgrade_list, u8map);
//ds_list_mark_as_map(upgrade_list, ds_list_size(upgrade_list)-1);
//ds_list_add(upgrade_list, u9map);
//ds_list_mark_as_map(upgrade_list, ds_list_size(upgrade_list)-1);
//ds_list_add(upgrade_list, u10map);
//ds_list_mark_as_map(upgrade_list, ds_list_size(upgrade_list)-1);


//ds_map_add(u1map, "name", "can_double_jump");
//ds_map_add(u1map, "room_found", "");
//ds_map_add(u2map, "name", "can_hook");
//ds_map_add(u2map, "room_found", "");
//ds_map_add(u3map, "name", "can_dash");
//ds_map_add(u3map, "room_found", "");
//ds_map_add(u4map, "name", "has_missiles");
//ds_map_add(u4map, "room_found", "");
//ds_map_add(u5map, "name", "has_bombs");
//ds_map_add(u5map, "room_found", "");
//ds_map_add(u6map, "name", "has_screw_attack");
//ds_map_add(u6map, "room_found", "");
//ds_map_add(u7map, "name", "has_orb_slash");
//ds_map_add(u7map, "room_found", "");
//ds_map_add(u8map, "name", "has_wave");
//ds_map_add(u8map, "room_found", "");
//ds_map_add(u9map, "name", "has_spread");
//ds_map_add(u9map, "room_found", "");
//ds_map_add(u10map, "name", "has_mod_system");
//ds_map_add(u10map, "room_found", "");

//mod_list = ds_list_create();
//energy_tank_list = ds_list_create();
//missile_list = ds_list_create();