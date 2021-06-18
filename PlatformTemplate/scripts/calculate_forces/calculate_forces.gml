// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function calculate_forces(){

	msp = ((force_h/mass)/60);
	hsp = approach(hsp, (msp), asp);

}
