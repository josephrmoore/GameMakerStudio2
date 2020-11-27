// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function room_music(){

	var clip;
	switch(room_get_name(room)){
		case "mainMenu":
			clip = aMainMenu;
			break;
		case "level1":
			clip = aLevel1;
			break;
		case "level2":
			clip = aLevel2;
			break;
		case "level3":
			clip = aLevel3;
			break;
		case "level4":
			clip = aLevel4;
			break;
		case "level5":
			clip = aLevel5;
			break;
		case "level6":
			clip = aLevel6;
			break;
		case "level7":
			clip = aLevel7;
			break;
		case "level8":
			clip = aLevel8;
			break;
		case "level8B":
			clip = aLevel8;
			break;
		case "level9":
			clip = aLevel9;
			break;
	}
	
	audio_play_sound(clip, 10, true);

}