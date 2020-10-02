/// @description Insert description here
// You can write your code in this editor
if(oGame.shaders_on){
shader_set(shBlue);
draw_self();
shader_reset();
} else {
draw_self();
}