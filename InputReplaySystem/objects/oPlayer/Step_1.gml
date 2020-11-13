/// @author Alejandro Hitti
/// @description Input check

var recorder = instance_find(oInputRecorder, 0);

if (recorder != noone && !recorder._isPlaying)
{
    _kLeft   = keyboard_check(vk_left);
    _kRight  = keyboard_check(vk_right);
    _kUp     = keyboard_check(vk_up);
    _kDown   = keyboard_check(vk_down);
    _kAction = keyboard_check_pressed(vk_space);
}
