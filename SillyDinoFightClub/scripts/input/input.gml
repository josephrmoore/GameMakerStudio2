key_walk_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_walk_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));
key_jump_held = keyboard_check(vk_up) || keyboard_check(ord("W"));
key_duck = keyboard_check(vk_down) || keyboard_check(ord("S"));
key_any = keyboard_check_pressed(ord("Z")) || keyboard_check_pressed(ord("X")) || keyboard_check_pressed(ord("C"));

key_up = key_jump;
key_down = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"));

key_p1_start = keyboard_check_pressed(ord("1"));
key_p2_start = keyboard_check_pressed(ord("2"));

key_p1_left = keyboard_check(ord("A"));
key_p1_right = keyboard_check(ord("D"));
key_p1_up = keyboard_check_pressed(ord("W"));
key_p1_down = keyboard_check(ord("S"));
key_p1_left_pressed = keyboard_check_pressed(ord("A"));
key_p1_right_pressed = keyboard_check_pressed(ord("D"));
key_p1_up_held = keyboard_check(ord("W"));
key_p1_down_pressed = keyboard_check_pressed(ord("S"));
key_p1_attack1 = keyboard_check_pressed(ord("C"));
key_p1_attack2 = keyboard_check_pressed(ord("V"));
key_p1_attack3 = keyboard_check_pressed(ord("B"));
key_p1_attack4 = keyboard_check_pressed(ord("N"));
key_p1_any = key_p1_attack1 || key_p1_attack2 || key_p1_attack3 || key_p1_attack4;

key_p2_left = keyboard_check(vk_left);
key_p2_right = keyboard_check(vk_right);
key_p2_up = keyboard_check_pressed(vk_up);
key_p2_down = keyboard_check(vk_down);
key_p2_left_pressed = keyboard_check_pressed(vk_left);
key_p2_right_pressed = keyboard_check_pressed(vk_right);
key_p2_up_held = keyboard_check(vk_up);
key_p2_down_pressed = keyboard_check_pressed(vk_down);
key_p2_attack1 = keyboard_check_pressed(ord("U"));
key_p2_attack2 = keyboard_check_pressed(ord("I"));
key_p2_attack3 = keyboard_check_pressed(ord("O"));
key_p2_attack4 = keyboard_check_pressed(ord("P"));
key_p2_any = key_p2_attack1 || key_p2_attack2 || key_p2_attack3 || key_p2_attack4;

if(keyboard_check_pressed(ord("0"))){
	game_restart();
}

//if(key_walk_left){
//	hsp -= 3;
//} 

//if(key_walk_right){
//	hsp += 3;
//} 

//if(key_jump){
//	vsp -= jump_speed;
//}