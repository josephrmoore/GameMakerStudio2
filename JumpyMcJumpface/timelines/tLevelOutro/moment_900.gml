var next_room = level2;
var last_finished = 1;

switch(oGame.current_room){
	case "level2":
		next_room = level3;
		last_finished = 2
		break;
	case "level3":
		next_room = level4;
		last_finished = 3
		break;
	case "level4":
		next_room = level5;
		last_finished = 4
		break;
	case "level5":
		next_room = level6;
		last_finished = 5
		break;
	case "level6":
		next_room = level7;
		last_finished = 6
		break;
	case "level7":
		next_room = level8;
		last_finished = 7
		break;
	case "level8":
		next_room = level9;
		last_finished = 8
		break;
	case "level9":
		next_room = mainMenu;
		last_finished = 9
		break;
}

oGame.last_level_finished = last_finished;
SaveGame("jumpydata.sav");
room_goto(next_room);