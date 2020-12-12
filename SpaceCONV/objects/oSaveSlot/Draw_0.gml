/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_set_color(c_white);
draw_set_font(fH2);
if(has_save_data){
	draw_text(300, 150+(save_slot_number*250), string(current_room));	
} else {
	draw_text(200, 150+(save_slot_number*250), "NEW GAME");
}