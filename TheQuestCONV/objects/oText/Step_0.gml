/// @description Insert description here
// You can write your code in this editor

if(is_array(text_chunk)){
	text = text_chunk[current_chunk];
}

letters += spd;
text_current = string_copy(text, 1, floor(letters));

draw_set_font(fTextbox);
if(h == 0){
	h = string_height(text);
}
w = string_width(text_current);

if(letters >= length && keyboard_check(vk_anykey)){
	if(is_array(text_chunk)){
		if(current_chunk < array_length_1d(text_chunk)-1){
			current_chunk++;
			letters = 0;
		} else {
			oBrain.callback_text++;
			oBrain.no_control = false;
			instance_destroy();
			with (oCamera) {
				follow = oPlayer;
			}
		}
	} else {
		oBrain.callback_text++;
		oBrain.no_control = false;
		instance_destroy();
		with (oCamera) {
			follow = oPlayer;
		}
	}
}