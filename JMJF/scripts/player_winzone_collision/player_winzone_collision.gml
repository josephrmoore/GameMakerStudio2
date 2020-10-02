// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_winzone_collision(){
	if(place_meeting(x,y,oWinZone)){
		avatar_state = AVATARSTATE.WIN;
	}
}