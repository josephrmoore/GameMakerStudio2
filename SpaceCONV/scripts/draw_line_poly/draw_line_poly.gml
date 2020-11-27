///draw_line_poly( x1, y1, x2, y2, width )
function draw_line_poly(argument0, argument1, argument2, argument3, argument4) {
	//
	// 2017/01/29
	// @jujuadams

	var _x1 = argument0;
	var _y1 = argument1;
	var _x2 = argument2;
	var _y2 = argument3;
	var _w  = argument4;

	var _d  = _w * 0.5 / point_distance( _x1, _y1, _x2, _y2 );
	var _dx = ( _x2 - _x1 ) * _d;
	var _dy = ( _y2 - _y1 ) * _d;

	draw_primitive_begin( pr_trianglestrip );
	draw_vertex( _x1 + _dy, _y1 - _dx );
	draw_vertex( _x2 + _dy, _y2 - _dx );
	draw_vertex( _x1 - _dy, _y1 + _dx );
	draw_vertex( _x2 - _dy, _y2 + _dx );
	draw_primitive_end();



}
