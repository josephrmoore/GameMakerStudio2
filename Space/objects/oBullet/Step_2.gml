/// @description Insert description here
// You can write your code in this editor

if(oPlayer.has_wave && wavey){
	if(vert_wave){
		if(horiz_wave){
			y = wave(y-20, y+20, .1, 0, false);
		}
		x = wave(x-20, x+20, .1, 0, false);
	} else {
		y = wave(y-20, y+20, .1, 0, false);
	}
}