/// @description Insert description here
// You can write your code in this editor
enum STORY {
	FIRSTPLAY,
	STARTQUEST,
	SEEGUARDS,
	AVOIDGUARDS,
	INCOURTYARD,
	GETKNIFE,
	HAVEKNIFE,
	INDUNGEON,
	FINDINGSTAFF,
	HAVESTAFF,
	OUTSIDECASTLE,
	KILLGIANT,
	GIANTKILLED,
	KILLOTHERGIANT,
	OTHERGIANTKILLED,
	OUTSIDETOWER,
	RESCUEPRINCESS,
	PRINCESSATTACKING,
	PRINCESSDEAD,
	REVEAL,
	LASTCHOICE
}

story_state = STORY.FIRSTPLAY;

fairy_start_text[0] = "Hey! Wake up! Wake up! Listen!";
fairy_start_text[1] = "WAKE UP!";
fairy_start_text[2] = "The princess needs your help. An evil giant has kidnapped her and locked her away in a tower. You are her only hope.";
fairy_start_text[3] = "You cannot defeat the giant as you are now. There are several items around town that will help you in your quest."
fairy_start_text[4] = "Kill the giant. Save the princess. You are her only hope.";

fairy_hall_text_1[0] = "";

fairy_courtyard_text[0] = "";

fairy_dungeon_text[0] = "";

fairy_hall_text_2[0] = "";

fairy_castle_text[0] = "";

fairy_hall_text_3[0] = "";

fairy_tower_text[0] = "";

fairy_reveal_text[0] = "";

fairy_last_choice_text[0] = "";

story_text[STORY.FIRSTPLAY] = fairy_start_text;
story_text[STORY.SEEGUARDS] = fairy_hall_text_1;
story_text[STORY.GETKNIFE] = fairy_courtyard_text;
story_text[STORY.INDUNGEON] = fairy_dungeon_text;
story_text[STORY.OUTSIDECASTLE] = fairy_hall_text_2;
story_text[STORY.GIANTKILLED] = fairy_castle_text;
story_text[STORY.OUTSIDETOWER] = fairy_hall_text_3;
story_text[STORY.PRINCESSATTACKING] = fairy_tower_text;
story_text[STORY.PRINCESSDEAD] = fairy_reveal_text;
story_text[STORY.REVEAL] = fairy_last_choice_text;