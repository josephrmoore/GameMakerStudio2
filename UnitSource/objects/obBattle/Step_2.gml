with (other) {
x=__view_get( e__VW.WView, 0 )/2+__view_get( e__VW.XView, 0 )
y=__view_get( e__VW.YView, 0 )+300

if alpha
{
    xx+=0.02
    yy+=0.02
    if xx>=1.35
    image_alpha-=0.15
} else {
  xx+=0.0015
  yy+=0.0015
  
  if image_alpha<1 image_alpha+=0.15
}

if image_alpha<=0 instance_destroy()

}
