number_squares = argument0;
number_symbols = argument1;
number_symbol_options = argument2;

var max_width = 800;
var row_padding = 100;
var max_height = 300;
var div_width = max_width/(number_symbols+1);
var offset_x = 100;
var offset_y = offset_x;

input();

for(var i=0; i<(number_squares*2); i+=2){
	var s1 = instance_create_layer(offset_x,(i/2)*row_padding+offset_y,"Squares",oColor);
	squares[i] = s1;
	var s2 = instance_create_layer(max_width+offset_x,(i/2)*row_padding+offset_y,"Squares",oColor);
	squares[i+1] = s2;
}

for(var j=0; j<number_symbols; j++){
	var sy = instance_create_layer((j*div_width)+div_width+offset_x,max_height+offset_y,"Symbols",oSymbol);
	symbols[j] = sy;
}

