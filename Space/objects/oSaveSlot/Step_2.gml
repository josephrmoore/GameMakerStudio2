/// @description Insert description here
// You can write your code in this editor

if(has_save_data){
	// load room name in text
	if(selected){
		image_index = 3;
	} else {
		image_index = 2;
	}
} else {
	// draw "new game" on slot
	if(selected){
		image_index = 1;
	} else {
		image_index = 0;
	}
}

