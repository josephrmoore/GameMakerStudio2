/// @description Insert description here
// You can write your code in this editor
if(has_shield && mod_shield){
	var thickness = 2;
	if(has_small_avatar && mod_small_avatar){
		thickness = 2;
	}
	outline_start(thickness,c_white);
	draw_self();
	outline_end();
} else {
	draw_self();
}

if(flash>0){
	flash--;
	shader_set(hitflash);
	draw_self();
	shader_reset();
}