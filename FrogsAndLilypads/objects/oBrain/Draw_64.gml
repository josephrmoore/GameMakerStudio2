/// @description Insert description here
// You can write your code in this editor
switch(room){
	case init:
		break;
	case title:
		draw_sprite(sTitle, 0, 0, 0);
		break;
	case setup:
		draw_sprite(sSetup, 0, 0, 0);
		set_all_text(c_white, fH2);
		draw_text(217,265,string(num_frogs));
		draw_text(445,445,string(num_lilypads));
		break;
	case gameboard:
		break;
}