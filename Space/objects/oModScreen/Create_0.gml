/// @description Insert description here
// You can write your code in this editor
instance_create_layer(0,0,"Mods",oModSystem);
for(var i=0; i<PLAYERMODS.size; i++){
	var ymult = 0;
	var xmult = i*80;
	if(i>6){
		ymult = 100;
		xmult = (i-7)*80;
	}
	instance_create_layer(xmult,250+ymult,"Mods",oModItem);
}