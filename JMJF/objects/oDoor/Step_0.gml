/// @description Insert description here
// You can write your code in this editor

if(opened && y>220){
	oDoor.vsp = 3;
	y -= vsp;
}

// write close door logic
if(!opened && y<280){
	oDoor.vsp = -3;
	y -= vsp;
}

if(y>280){
	y=280;
}