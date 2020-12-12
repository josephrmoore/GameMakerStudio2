/// @description Insert description here
// You can write your code in this editor

if(current_line < 3 || current_char <= string_length(line_3)){
	if(current_line == 3){
		if(alarm[0] == 0){
			alarm[0] = 15;
		}
	} else {
		if(alarm[0] == 0){
			alarm[0] = 30;
		}
	}

}

//show_debug_message(" ");
//show_debug_message("CHAR");
//show_debug_message(current_char);
//show_debug_message("LINE");
//show_debug_message(current_line);
//show_debug_message(line_1_printed);
//show_debug_message(" ");