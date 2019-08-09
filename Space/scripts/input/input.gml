/// @description All input capture code
// key capture

if(oController.player_has_control){
key_right = gamepad_button_check(0,gp_padr) || gamepad_axis_value(0,gp_axislh) > 0.2 || keyboard_check(vk_right) || keyboard_check(ord("D"));
key_left = gamepad_button_check(0,gp_padl)|| gamepad_axis_value(0,gp_axislh) < -0.2 || keyboard_check(vk_left) || keyboard_check(ord("A"));

key_right_pressed = gamepad_button_check_pressed(0,gp_padr) || gamepad_axis_value(0,gp_axislh) > 0.5 || keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D"));
key_left_pressed = gamepad_button_check_pressed(0,gp_padl)|| gamepad_axis_value(0,gp_axislh) < -0.5 || keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A"));

key_up = gamepad_button_check(0,gp_padu) || gamepad_axis_value(0,gp_axislv) < -0.2 || keyboard_check(vk_up) || keyboard_check(ord("W"));
key_down = gamepad_button_check(0,gp_padd) || gamepad_axis_value(0,gp_axislv) > 0.2 || keyboard_check(vk_down) || keyboard_check(ord("S"));
key_up_pressed = gamepad_button_check_pressed(0,gp_padu) || gamepad_axis_value(0,gp_axislv) < -0.5 || keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));
key_down_pressed = gamepad_button_check_pressed(0,gp_padd) || gamepad_axis_value(0,gp_axislv) > 0.5 || keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"));

key_jump_pressed = gamepad_button_check_pressed(0,gp_face1) || keyboard_check_pressed(vk_space) || keyboard_check_pressed(ord("Z"));
key_jump = key_jump_pressed;
key_jump_held = gamepad_button_check(0,gp_face1) || keyboard_check(vk_space) || keyboard_check(ord("Z"));

key_dash = gamepad_button_check_pressed(0,gp_shoulderrb) || keyboard_check_pressed(ord("M")); 
key_block = gamepad_button_check(0,gp_shoulderlb) || keyboard_check(ord("N"));

key_shoot_pressed = gamepad_button_check_pressed(0,gp_face3) || keyboard_check_pressed(ord("X"));
key_shoot = key_shoot_pressed;
key_shoot_auto = gamepad_button_check(0,gp_face3) || keyboard_check(ord("X"));
key_slash = gamepad_button_check_pressed(0,gp_face4) || keyboard_check_pressed(ord("C"));
key_missile_pressed = gamepad_button_check_pressed(0,gp_face2) || keyboard_check_pressed(ord("V"));
key_missile = gamepad_button_check(0,gp_face2) || keyboard_check(ord("V"));

key_bomb = gamepad_axis_value(0,gp_axisrh) > 0.2 || gamepad_axis_value(0,gp_axisrh) < -0.2 || gamepad_axis_value(0,gp_axisrv) < -0.2 || gamepad_axis_value(0,gp_axisrv) > 0.2 || keyboard_check_pressed(ord("P"));

key_pause = gamepad_button_check_pressed(0,gp_start) || keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_return);

key_mmi_l = gamepad_button_check_pressed(0,gp_shoulderl) || keyboard_check_pressed(vk_lshift);
key_mmi_r = gamepad_button_check_pressed(0,gp_shoulderr) || keyboard_check_pressed(vk_rshift);
key_mmi = key_mmi_l || key_mmi_r;

key_any = key_right || key_left || key_up || key_down || key_jump || key_dash || key_block || key_shoot || key_slash || key_missile || key_bomb || key_pause || keyboard_check_pressed(vk_anykey);

}


//if(key_pause){
//	show_debug_message("PAWS!");
//}

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

//if(key_one){
//	has_wave = false;
//	has_spread = false;
//}

//if(key_two){
//	has_wave = false;
//	has_spread = true;
//}

//if(key_three){
//	if(oController.is_paused){
//		oController.is_paused = false;
//	} else {
//		oController.is_paused = true;
//	}
//	show_debug_message("thwee");
//}

//if(key_four){
//	has_wave = true;
//	has_spread = true;
//}

//if(key_five){
//	if(has_turbo){
//		has_turbo = false;
//	} else {
//		has_turbo = true;
//	}
//}

if(key_one){
	audio_group_set_gain(Music,0,0);
}
if(key_two){
	audio_group_set_gain(Music,1,0);
}

if(key_three){
	SaveGame();
}

if (key_four){
	LoadGame();
}

if(key_five){
	oController.player_has_control = true;
}

if (key_six){
	
}

if(key_seven){
	
}

if (key_eight){
	
}

if(key_nine){
	
}

if(key_zero){
	game_restart();
}