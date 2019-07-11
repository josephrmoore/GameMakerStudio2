image_index=0;

if scale && tscale>0 {
   tscale-=0.1;
   angle-=1;
}

if scale=0 && tscale<1 {
   tscale+=0.1;
   angle-=1;
}

if !instance_exists(obOverview) scale=0;

//image_angle+=0.1;

