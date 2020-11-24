// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Game_Ending(){
	if(oAvatar.avatar_state == AVATARSTATE.WALKING){
		oGame.pressed_buttons_held = false;
	}
}