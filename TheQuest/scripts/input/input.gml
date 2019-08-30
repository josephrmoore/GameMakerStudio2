key_up = keyboard_check(vk_up) || keyboard_check(ord("W"));
key_down = keyboard_check(vk_down) || keyboard_check(ord("S"));
key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));

key_shoot = keyboard_check(vk_space);

key_reset = keyboard_check(ord("0"));

if(key_reset){
	game_restart();
}