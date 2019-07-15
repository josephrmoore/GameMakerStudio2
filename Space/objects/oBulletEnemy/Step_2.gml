/// @description Insert description here
// You can write your code in this editor

if(place_meeting(x,y,oPlayer)){
	with(oPlayer){
		if(oPlayer.state == PLAYERSTATE.BLOCKING){
			oPlayer.hp -= (other.bullet_strength*0.5);
		} else {
			oPlayer.hp -= other.bullet_strength;
		}
	}	
}