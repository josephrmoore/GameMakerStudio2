/// @description Insert description here
// You can write your code in this editor
if(oGame.shaders_on){
shader_set(shPurple);
draw_self();
shader_reset();
} else {
draw_self();
}