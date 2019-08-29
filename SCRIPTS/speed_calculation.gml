// vars needed: vsp, hsp, key_left, key_right, key_up, key_down, base_speed

hsp = 0;
vsp = 0;

var move_h = key_right - key_left;
var move_v = key_down - key_up;

hsp = move_h * base_speed;
vsp = move_v * base_speed;

