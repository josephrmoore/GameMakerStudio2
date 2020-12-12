// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Game_Ending(){
	//if(oAvatar.avatar_state == AVATARSTATE.WALKING){
	//	oGame.pressed_buttons_held = false;
	//}
	
	if(oAvatar.y < 60){
		audio_sound_gain(aEndingCredits, 0, 3000);
	}
	
	if(oAvatar.y < -100){
		oGame.game_state = GAMESTATE.MAINMENU;
		audio_sound_gain(aEndingCredits, 1, 0);
		room_goto(mainMenu);
	}
}