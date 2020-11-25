// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_winzone_collision(){
	if(oGame.game_state == GAMESTATE.ENDING){
		if(place_meeting(x,y,oWinZone)){
			oRiserOutro.rising = true;
			avatar_state = AVATARSTATE.WIN;
			oGame.move_right = false;
		}
	} else {
		if(place_meeting(x,y,oWinZone)){
			avatar_state = AVATARSTATE.WIN;
			game_state = GAMESTATE.LEVELOUTRO;
			lose_control();
			oRiserOutro.rising = true;
			start_timeline(tLevelOutro);
		}
	}
}