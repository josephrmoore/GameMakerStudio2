/// @description All input capture code
/// attach to oGame object
function input() {
	// key capture

	move_right = gamepad_button_check(0,gp_padr) || gamepad_axis_value(0,gp_axislh) > 0.2 || keyboard_check(vk_right) || keyboard_check(ord("D"));
	move_left = gamepad_button_check(0,gp_padl)|| gamepad_axis_value(0,gp_axislh) < -0.2 || keyboard_check(vk_left) || keyboard_check(ord("A"));
	move_up = gamepad_button_check(0,gp_padu) || gamepad_axis_value(0,gp_axislv) < -0.2 || keyboard_check(vk_up) || keyboard_check(ord("W"));
	move_down = gamepad_button_check(0,gp_padd) || gamepad_axis_value(0,gp_axislv) > 0.2 || keyboard_check(vk_down) || keyboard_check(ord("S"));

	pressed_left = gamepad_button_check_pressed(0,gp_padr) || gamepad_axis_value(0,gp_axislh) > 0.5 || keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D"));
	pressed_right = gamepad_button_check_pressed(0,gp_padl)|| gamepad_axis_value(0,gp_axislh) < -0.5 || keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A"));
	pressed_up = gamepad_button_check_pressed(0,gp_padu) || gamepad_axis_value(0,gp_axislv) < -0.5 || keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));
	pressed_down = gamepad_button_check_pressed(0,gp_padd) || gamepad_axis_value(0,gp_axislv) > 0.5 || keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"));

	pressed_buttons = gamepad_button_check_pressed(0,gp_face1) || gamepad_button_check_pressed(0,gp_face2) || gamepad_button_check_pressed(0,gp_face3) || gamepad_button_check_pressed(0,gp_face4) || keyboard_check_pressed(vk_space);
	buttons = pressed_buttons;
	pressed_buttons_held = gamepad_button_check(0,gp_face1) || gamepad_button_check(0,gp_face2) || gamepad_button_check(0,gp_face3) || gamepad_button_check(0,gp_face4) || keyboard_check(vk_space);

	pressed_select = gamepad_button_check_pressed(0,gp_select) || keyboard_check_pressed(vk_tab);
	pressed_start = gamepad_button_check_pressed(0,gp_start) || keyboard_check_pressed(vk_return) || keyboard_check_pressed(vk_enter);

	key_delete = keyboard_check_pressed(vk_delete) || keyboard_check_pressed(vk_backspace);
	key_escape = keyboard_check_pressed(vk_escape);

	if(keyboard_check(ord("0"))){
		game_restart();
	}
	
	if(key_escape){
		game_end();
	}
}
