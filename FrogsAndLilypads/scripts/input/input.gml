any_key = keyboard_check_pressed(vk_anykey);

key_enter = keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_return) || keyboard_check_pressed(vk_enter);

key_left = keyboard_check_pressed(ord("A")) || keyboard_check_pressed(vk_left);
key_right = keyboard_check_pressed(ord("D")) || keyboard_check_pressed(vk_right);
key_up = keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up);
key_down = keyboard_check_pressed(ord("S")) || keyboard_check_pressed(vk_down);