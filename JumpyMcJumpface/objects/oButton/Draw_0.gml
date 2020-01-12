/// @description Insert description here
// You can write your code in this editor

switch (button_state) {
	case BUTTONSTATE.UNCLICKED: 
		image_index = 0;
		break;
	case BUTTONSTATE.CLICKED: 
		image_speed = 1;
		if(image_index == image_number-1){
			image_speed = 0;
		}
		break;
	case BUTTONSTATE.VERSIONA: 
		break;
	case BUTTONSTATE.VERSIONB:
		break;
}

draw_self();