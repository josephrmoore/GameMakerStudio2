/// @description All input capture code
// key capture

key_right = gamepad_button_check(0,gp_padr) || gamepad_axis_value(0,gp_axislh) > 0.2 || keyboard_check(vk_right) || keyboard_check(ord("D"));
key_left = gamepad_button_check(0,gp_padl)|| gamepad_axis_value(0,gp_axislh) < -0.2 || keyboard_check(vk_left) || keyboard_check(ord("A"));
key_up = gamepad_button_check(0,gp_padu) || gamepad_axis_value(0,gp_axislv) < -0.2 || keyboard_check(vk_up) || keyboard_check(ord("W"));
key_down = gamepad_button_check(0,gp_padd) || gamepad_axis_value(0,gp_axislv) > 0.2 || keyboard_check(vk_down) || keyboard_check(ord("S"));

key_jump = gamepad_button_check_pressed(0,gp_face1) || keyboard_check_pressed(vk_space) || keyboard_check_pressed(ord("Z"));;
key_jump_held = gamepad_button_check(0,gp_face1) || keyboard_check(vk_space) || keyboard_check(ord("Z"));;

key_dash = gamepad_button_check_pressed(0,gp_shoulderrb) || keyboard_check_pressed(ord("M")); 
key_block = gamepad_button_check(0,gp_shoulderlb) || keyboard_check(ord("N"));

key_shoot = gamepad_button_check_pressed(0,gp_face3) || keyboard_check_pressed(ord("X"));
key_shoot_auto = gamepad_button_check(0,gp_face3) || keyboard_check(ord("X"));
key_slash = gamepad_button_check_pressed(0,gp_face4) || keyboard_check_pressed(ord("C"));
key_missile = gamepad_button_check(0,gp_face2) || keyboard_check(ord("V"));

key_bomb = gamepad_axis_value(0,gp_axisrh) > 0.2 || gamepad_axis_value(0,gp_axisrh) < -0.2 || gamepad_axis_value(0,gp_axisrv) < -0.2 || gamepad_axis_value(0,gp_axisrv) > 0.2 || keyboard_check_pressed(ord("P"));

// ADMIN CONTROLS

key_one = keyboard_check_pressed(ord("1"));
key_two = keyboard_check_pressed(ord("2"));
key_three = keyboard_check_pressed(ord("3"));
key_four = keyboard_check_pressed(ord("4"));
key_five = keyboard_check_pressed(ord("5"));
key_six = keyboard_check_pressed(ord("6"));
key_seven = keyboard_check_pressed(ord("7"));
key_eight = keyboard_check_pressed(ord("8"));
key_nine = keyboard_check_pressed(ord("9"));
key_zero = keyboard_check_pressed(ord("0"));  

if(key_one){
	has_wave = false;
	has_spread = false;
}

if(key_two){
	has_wave = false;
	has_spread = true;
}

if(key_three){
	has_wave = true;
	has_spread = false;
}

if(key_four){
	has_wave = true;
	has_spread = true;
}

if(key_five){
	if(has_turbo){
		has_turbo = false;
	} else {
		has_turbo = true;
	}
}

if(has_turbo){
	key_shoot = key_shoot_auto;
}

if(key_six){
	room_goto(testroom);
}