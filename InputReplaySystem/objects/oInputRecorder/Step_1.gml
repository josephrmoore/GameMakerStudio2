/// @author Alejandro Hitti
/// @description Check input

// Keys we want to record
_input[eKey.LeftPressed]   = keyboard_check_pressed(vk_left);
_input[eKey.RightPressed]  = keyboard_check_pressed(vk_right);
_input[eKey.UpPressed]     = keyboard_check_pressed(vk_up);
_input[eKey.DownPressed]   = keyboard_check_pressed(vk_down);
_input[eKey.ActionPressed] = keyboard_check_pressed(vk_space);

_input[eKey.LeftReleased]  = keyboard_check_released(vk_left);
_input[eKey.RightReleased] = keyboard_check_released(vk_right);
_input[eKey.UpReleased]    = keyboard_check_released(vk_up);
_input[eKey.DownReleased]  = keyboard_check_released(vk_down);

// Keys we don't want to record
_kRecord = keyboard_check_pressed(ord("Q"));
_kPlay   = keyboard_check_pressed(ord("P"));
