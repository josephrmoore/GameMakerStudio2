/// @description Insert description here
// You can write your code in this editor

input();

for(var i=0; i<(number_squares*2); i+=2){
	// draw line from i -> first symbol
	for(var j=0; j<number_symbols; j++){
		var key_to_check = false;
		switch(j){
		case 0:
			key_to_check = key1;
			break;
		case 1:
			key_to_check = key2;
			break;
		case 2:
			key_to_check = key3;
			break;
		case 3:
			key_to_check = key4;
			break;
		case 4:
			key_to_check = key5;
			break;
		case 5:
			key_to_check = key6;
			break;
		case 6:
			key_to_check = key7;
			break;
		case 7:
			key_to_check = key8;
			break;
		case 8:
			key_to_check = key9;
			break;
	}
	
	if(key_to_check){
		show_debug_message(symbols[j].image_index);
			if(symbols[j].image_index == symbols[j].image_number-1){
				symbols[j].image_index = 0;
			} else {
				symbols[j].image_index++;
			}
	}
		if(symbols[j].image_index == 0){
			triangle();
		} else if (symbols[j].image_index == 1){
			circle();
		} else if (symbols[j].image_index == 2){
			square();
		} else {
			// just draw from i -> i+1
		}
		// go from i -> j0...jn -> i+1
	}
	// draw line from last symbol -> i+1
}
