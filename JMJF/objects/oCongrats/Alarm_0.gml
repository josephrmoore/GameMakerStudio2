/// @description Insert description here
// You can write your code in this editor

//show_debug_message(string_char_at(line_1, current_char));
//show_debug_message(current_char);

if(current_line == 1){
	line_1_printed += string_char_at(line_1, current_char);
	++current_char;
} else if (current_line == 2){
	line_2_printed += string_char_at(line_2, current_char);
	++current_char;
} else if (current_line == 3){
	line_3_printed += string_char_at(line_3, current_char);
	++current_char;
}

if(current_line == 1 && current_char > string_length(line_1)){
	current_line = 2;
	current_char = 1;
} else if (current_line == 2 && current_char > string_length(line_2)){
	current_line = 3;
	current_char = 1;
}

//show_debug_message(string_char_at(line_1, current_char));
//show_debug_message(current_char);
//show_debug_message(line_1);
//show_debug_message("alarm congrats");