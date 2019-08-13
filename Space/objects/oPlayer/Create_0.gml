/// @description Insert description here
// You can write your code in this editor

outline_init();

state = PLAYERSTATE.FREE;
location = PLAYERLOCATION.AIRBORNE;

hitByAttack = ds_list_create();

enum PLAYERSTATE {
	FREE,
	SLASHING,
	BLOCKING,
	DASHING,
	DUCKING,
	DEAD
}

enum PLAYERLOCATION {
	GROUNDED,
	AIRBORNE,
	SWIMMING,
	HANGING
}

has_mods_vars = [has_turbo, can_triple_jump, can_double_dash, can_triple_dash, has_strong_slash, has_long_slash, has_sticky_hang, has_slow_fall, has_small_avatar, has_sharp_dash, has_regen, has_shield, has_super_bombs, has_cluster_missiles];
mods_on_vars = [mod_turbo, mod_triple_jump, mod_double_dash, mod_triple_dash, mod_strong_slash, mod_long_slash, mod_sticky_hang, mod_slow_fall, mod_small_avatar, mod_sharp_dash, mod_regen, mod_shield, mod_super_bombs, mod_cluster_missiles];