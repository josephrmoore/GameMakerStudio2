/// @description Insert description here
// You can write your code in this editor
var dtrig = dummy_id;
with(oCannonDummy){
	if(!other.been_shot && dummy_id == dtrig){
		shoot();
		other.been_shot = true;
		show_debug_message("should shoot");
	}
	show_debug_message("TRIGGERED");
	show_debug_message(dtrig);
	show_debug_message(dummy_id);
}

