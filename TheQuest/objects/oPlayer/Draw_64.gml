/// @description Insert description here
// You can write your code in this editor
var margin = 30;
var spacing = 40;

for(var i=0; i<3; i++){
	if(i<hearts){
		draw_sprite(sHeart,0,margin+(i*spacing),margin);
	} else {
		draw_sprite(sHeart,1,margin+(i*spacing),margin);
	}
}