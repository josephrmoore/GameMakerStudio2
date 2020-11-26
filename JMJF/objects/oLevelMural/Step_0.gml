/// @description Insert description here
// You can write your code in this editor

if(oGame.menu_left){
	MoveLevelMural(1);
}

if(oGame.menu_right){
	MoveLevelMural(-1);
}

var calx = approach(x, -(current_level*640), 15);
x = calx;
oLevel2.x = calx+(1*640);
oLevel3.x = calx+(2*640);
oLevel4.x = calx+(3*640);
oLevel5.x = calx+(4*640);
oLevel6.x = calx+(5*640);
oLevel7.x = calx+(6*640);
oLevel8.x = calx+(7*640);
oLevel9.x = calx+(8*640);