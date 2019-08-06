/// @description Insert description here
// You can write your code in this editor
fade(targetRoom, targetX, targetY);
if(oController.current_music != oController.last_music){
	audio_group_set_gain(Music, 0, 250);
}
//room_goto(targetRoom);