/// @description Insert description here
// You can write your code in this editor
player_stats = ds_map_create();
persistent_changes = ds_map_create();
story_progress = STORY.BEGIN;

audio_group_load(Music);
audio_group_load(SFX);

enum STORY {
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