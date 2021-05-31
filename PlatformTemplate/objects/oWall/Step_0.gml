/// @description Insert description here
// You can write your code in this editor
if(bouncy && elasticity!=2){
	elasticity = 2;
	sprite_index = sprWallBouncy;
}

if(sticky && elasticity!=0){
	elasticity = 0;
	sprite_index = sprWallSticky;
}