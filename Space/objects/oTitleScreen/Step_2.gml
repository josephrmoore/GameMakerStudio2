/// @description Insert description here
// You can write your code in this editor

var anybutton = (gamepad_button_check(0,gp_padr) || keyboard_check_pressed(vk_anykey) || gamepad_button_check(0,gp_shoulderlb) || gamepad_button_check(0,gp_shoulderrb) || gamepad_button_check_pressed(0,gp_face1) || gamepad_button_check_pressed(0,gp_face2) || gamepad_button_check_pressed(0,gp_face3) || gamepad_button_check_pressed(0,gp_face4) || gamepad_axis_value(0,gp_axisrh) || gamepad_axis_value(0,gp_axislh) || gamepad_button_check_pressed(0,gp_shoulderl) || gamepad_button_check_pressed(0,gp_shoulderr) || gamepad_button_check_pressed(0,gp_select) || gamepad_button_check_pressed(0,gp_start));
if(anybutton) {
	room_goto(room0);
}