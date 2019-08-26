/// @description Insert description here
// You can write your code in this editor
with(oPlayer){
	x = other.target_x;
	y = other.target_y;
	oCamera.x = x;
	oCamera.y = y;
}
room_goto(target_room);