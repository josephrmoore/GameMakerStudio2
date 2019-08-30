/// draw_rectangle_inverted(x1,y1,x2,y2)
//
//  Draws a rectangle which inverts the colors beneath it.
//  Resets the blending mode to normal.
//
//      x1,y1       1st corner of the rectangle, real
//      x2,y2       2nd corner of the rectangle, real
//
/// GMLscripts.com/license
{
    draw_set_blend_mode_ext(bm_inv_dest_color,bm_inv_src_color);
    draw_rectangle_color(argument0,argument1,argument2,argument3,c_white,c_white,c_white,c_white,0);
    draw_set_blend_mode(bm_normal);
    return 0;
}