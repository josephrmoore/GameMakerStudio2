/// @description All input capture code
/// attach to oGame object
function input() {

	// KEYS

	move_right = gamepad_button_check(0,gp_padr) || gamepad_axis_value(0,gp_axislh) > 0.2 || keyboard_check(vk_right) || keyboard_check(ord("D"));
	move_left = gamepad_button_check(0,gp_padl)|| gamepad_axis_value(0,gp_axislh) < -0.2 || keyboard_check(vk_left) || keyboard_check(ord("A"));
	move_up = gamepad_button_check(0,gp_padu) || gamepad_axis_value(0,gp_axislv) < -0.2 || keyboard_check(vk_up) || keyboard_check(ord("W"));
	move_down = gamepad_button_check(0,gp_padd) || gamepad_axis_value(0,gp_axislv) > 0.2 || keyboard_check(vk_down) || keyboard_check(ord("S"));

	pressed_left = gamepad_button_check_pressed(0,gp_padr) || gamepad_axis_value(0,gp_axislh) > 0.5 || keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D"));
	pressed_right = gamepad_button_check_pressed(0,gp_padl)|| gamepad_axis_value(0,gp_axislh) < -0.5 || keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A"));
	pressed_up = gamepad_button_check_pressed(0,gp_padu) || gamepad_axis_value(0,gp_axislv) < -0.5 || keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));
	pressed_down = gamepad_button_check_pressed(0,gp_padd) || gamepad_axis_value(0,gp_axislv) > 0.5 || keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"));

	pressed_buttons = gamepad_button_check_pressed(0,gp_face1) || gamepad_button_check_pressed(0,gp_face2) || gamepad_button_check_pressed(0,gp_face3) || gamepad_button_check_pressed(0,gp_face4) || keyboard_check_pressed(vk_space);
	pressed_buttons_held = gamepad_button_check(0,gp_face1) || gamepad_button_check(0,gp_face2) || gamepad_button_check(0,gp_face3) || gamepad_button_check(0,gp_face4) || keyboard_check(vk_space);

	pressed_select = gamepad_button_check_pressed(0,gp_select) || keyboard_check_pressed(vk_tab);
	pressed_start = gamepad_button_check_pressed(0,gp_start) || keyboard_check_pressed(vk_return) || keyboard_check_pressed(vk_enter);

	key_delete = keyboard_check_pressed(vk_delete) || keyboard_check_pressed(vk_backspace);
	key_escape = keyboard_check_pressed(vk_escape);
	
	
	anykey_nodir = keyboard_check_pressed(vk_anykey) || pressed_buttons || pressed_select || pressed_start;
	anykey = pressed_left || pressed_right || pressed_down || pressed_up || anykey_nodir;
	
	//key_1 = keyboard_check_pressed(ord("1"));
	//key_2 = keyboard_check_pressed(ord("2"));
	//key_3 = keyboard_check_pressed(ord("3"));
	//key_4 = keyboard_check_pressed(ord("4"));
	//key_5 = keyboard_check_pressed(ord("5"));
	//key_6 = keyboard_check_pressed(ord("6"));
	//key_7 = keyboard_check_pressed(ord("7"));
	//key_8 = keyboard_check_pressed(ord("8"));
	//key_9 = keyboard_check_pressed(ord("9"));
	//key_0 = keyboard_check_pressed(ord("O"));

}