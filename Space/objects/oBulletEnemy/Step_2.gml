/// @description Insert description here
// You can write your code in this editor

if(place_meeting(x,y,oPlayer)){
	with(oPlayer){
		if(oPlayer.state == PLAYERSTATE.BLOCKING){
			PlayerHit(other.bullet_strength*0.5);
		} else {
			PlayerHit(other.bullet_strength);
		}
	}	
}