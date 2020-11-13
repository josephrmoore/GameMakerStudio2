// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function confirm_quit(){
	// ***THESE NEED TO BE IN DRAW_GUI***
	//set_all_text(c_white, fPause, 0,0);
	//draw_text(100, 100, "ARE YOU SURE?");
	oGame.confirm_active = true;
	var menu = instance_create_layer(200,200,"Menus",oMenu);
	menu.menu_id = MENUS.CONFIRM;
}