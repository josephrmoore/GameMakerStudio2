/// @description Insert description here
// You can write your code in this editor

switch (button_state) {
	case BUTTONSTATE.UNCLICKED: 
		ButtonState_Unclicked();
		break;
	case BUTTONSTATE.CLICKED: 
		ButtonState_Clicked();
		break;
	case BUTTONSTATE.VERSIONA: 
		ButtonState_VersionA();
		break;
	case BUTTONSTATE.VERSIONB:
		ButtonState_VersionB();
		break;
}
