key_walk_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_walk_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_up || keyboard_check(ord("W")));
key_duck = keyboard_check(vk_down) || keyboard_check(ord("S"));

if(key_walk_left || key_walk_right){
	fighter_state = FIGHTERSTATES.WALKING;
} else {
	fighter_state = FIGHTERSTATES.IDLE;
}