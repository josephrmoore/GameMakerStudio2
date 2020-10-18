/// @description Insert description here
// You can write your code in this editor
if(oGame.shaders_on){
	if(sprite_index != noone){
		shader_set(current_shader);
		draw_self();
		shader_reset();
	}
} else {
	if(sprite_index != noone){
		draw_self();
	}
}