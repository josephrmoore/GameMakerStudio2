/// @description Insert description here
// You can write your code in this editor
switch(room){
	case gameboard:
		for(var i=0; i<num_frogs; i++){
			var frog = instance_create_layer(32+(i*64), 96, "Frogs", oFrog);
			frog.image_index = i;
		}
		for(var j=0; j<num_lilypads; j++){
			if(j<2){
				var lp = instance_create_layer(96+(j*64), 32, "Lilypads", oLilypad);
			} else {
				var lp = instance_create_layer(96+((j-2)*64), 160, "Lilypads", oLilypad);
			}
			lp.image_index = j;
		}
		break;
}