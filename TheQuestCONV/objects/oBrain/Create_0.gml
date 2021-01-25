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

enum PLAYERSTATE {
	FREE,
	SLASHING
}

enum GUARDSTATE{
	IDLE,
	PATROLLING,
	CHASING
}



story_state = STORY.FIRSTPLAY;

fairy_start_text[0] = "Hey! Wake up! Wake up! Listen!";
fairy_start_text[1] = "WAKE UP!";
fairy_start_text[2] = "The princess needs your help.";
fairy_start_text[3] = "An evil giant has kidnapped her and locked her away in a tower."
fairy_start_text[4] = "You are her only hope.";
fairy_start_text[5] = "You cannot defeat the giant as you are now.";
fairy_start_text[6] = "There are several items around town that will help you in your quest."
fairy_start_text[7] = "Kill the giant. Save the princess. You are her only hope.";

fairy_hall_text_1[0] = "These guards will capture you if they see you.";
fairy_hall_text_1[1] = "Get past them however you can.";

fairy_courtyard_text[0] = "You'll never make it past those beasts.";
fairy_courtyard_text[1] = "You need a weapon.";
fairy_courtyard_text[2] = "Get the blade.";

fairy_dungeon_text[0] = "You've almost found it.";
fairy_dungeon_text[1] = "The magic staff of power.";
fairy_dungeon_text[2] = "Once you have that, no one can stand in your way.";

fairy_hall_text_2[0] = "The giant lives in the castle beyond.";
fairy_hall_text_2[1] = "Get it. Kill the monster. Get out.";
fairy_hall_text_2[2] = "Get the princess.";

fairy_castle_text_1[0] = "You did it!";
fairy_castle_text_1[1] = "The giant is dead.";
fairy_castle_text_1[2] = "But what is that?"

fairy_castle_text_2[0] = "It's his wife.";
fairy_castle_text_2[1] = "She's livid.";
fairy_castle_text_2[2] = "You killed the love of her life.";
fairy_castle_text_2[3] = "She won't let you walk out of here.";
fairy_castle_text_2[4] = "It's kill or be killed now.";
fairy_castle_text_2[5] = "Kill her too.";

fairy_hall_text_3[0] = "The giants are gone.";
fairy_hall_text_3[1] = "The princess is yours.";
fairy_hall_text_3[2] = "She's locked in the tower.";
fairy_hall_text_3[3] = "But you can find a way in, can't you?";

fairy_tower_text[0] = "There she is.";
fairy_tower_text[1] = "The princess.";
fairy_tower_text[2] = "Save her. Take her now.";

fairy_reveal_text[0] = "What have you done?";
fairy_reveal_text[1] = "She's dead. They're all dead."
fairy_reveal_text[2] = "Why did you do it?"
fairy_reveal_text[3] = "Do you even know what's going on right now?"
fairy_reveal_text[4] = "You killed them all. They were trying to help you.";
fairy_reveal_text[5] = "But you killed them.";
fairy_reveal_text[6] = "Your mother. Your stepfather. Your sister.";
fairy_reveal_text[7] = "They're all gone. And it's all your fault.";

fairy_last_choice_text[0] = "The sirens ar getting louder. They're almost here.";
fairy_last_choice_text[1] = "There's nothing you can do to avoid it.";
fairy_last_choice_text[2] = "But there's still just enough time...";
fairy_last_choice_text[3] = "Just enough time...... to go another way.";
fairy_last_choice_text[4] = "But whatever you decide to do, you better do it fast.";
fairy_last_choice_text[5] = "They're gonna be here real soon now.";

story_text[STORY.FIRSTPLAY] = fairy_start_text;
story_text[STORY.SEEGUARDS] = fairy_hall_text_1;
story_text[STORY.GETKNIFE] = fairy_courtyard_text;
story_text[STORY.INDUNGEON] = fairy_dungeon_text;
story_text[STORY.OUTSIDECASTLE] = fairy_hall_text_2;
story_text[STORY.GIANTKILLED] = fairy_castle_text_1;
story_text[STORY.KILLOTHERGIANT] = fairy_castle_text_2;
story_text[STORY.OUTSIDETOWER] = fairy_hall_text_3;
story_text[STORY.PRINCESSATTACKING] = fairy_tower_text;
story_text[STORY.PRINCESSDEAD] = fairy_reveal_text;
story_text[STORY.REVEAL] = fairy_last_choice_text;