/// @description Insert description here
// You can write your code in this editor

var xoff = random_range(-32, 32); 
var yoff = -20;

if(place_meeting(x,y,oPlayer)){
	if(type == "spikes"){
		Pushback(xoff, yoff);
		PlayerHit(20);
	} else if (type == "lava"){
		PlayerHit(0.1);
		if(!audio_is_playing(sndLava)){
			audio_play_sound(sndLava, 1000, true);
		}
	} else if (type == "pit"){
		room_goto(dead);
	} else {
		audio_stop_sound(sndLava);
	}
}