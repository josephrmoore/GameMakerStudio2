/// @description Insert description here
// You can write your code in this editor
if(oGame.shaders_on && activated){
shader_set(shRed);
draw_self();
shader_reset();
} else if(activated){
draw_self();
}