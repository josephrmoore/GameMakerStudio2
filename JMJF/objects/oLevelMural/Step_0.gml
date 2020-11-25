/// @description Insert description here
// You can write your code in this editor

if(oGame.menu_left){
	MoveLevelMural(1);
}

if(oGame.menu_right){
	MoveLevelMural(-1);
}

x = approach(x, -(current_level*640), 15);