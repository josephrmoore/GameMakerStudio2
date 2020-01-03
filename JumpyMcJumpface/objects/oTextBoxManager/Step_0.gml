/// @description Insert description here
// You can write your code in this editor
if(current_text_box == last_text_box+1){
	instance_destroy();
} else {
	for(var i=0; i<instance_number(oTextBox); i++){
		var ins = instance_find(oTextBox, i);
		if(ins.order == current_text_box){
			ins.active = true;
		} else {
			ins.active = false;
		}
	}
}