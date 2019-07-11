image_index=0;
if mouse_check_button(mb_left) && distance_to_point(mouse_x, mouse_y)=0 image_index=1;

    if !instance_exists(obBlack) scale=0;

if scale && tscale>0 {
   tscale-=0.1;
   angle-=1;
}

if scale=0 && tscale<1 {
   tscale+=0.1;
   angle-=1;
}

//image_angle+=0.1

