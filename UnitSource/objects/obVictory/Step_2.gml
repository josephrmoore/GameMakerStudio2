with (other) {
x=__view_get( e__VW.WView, 0 )/2+__view_get( e__VW.XView, 0 )
y=__view_get( e__VW.YView, 0 )+325

if alpha
{
    xx+=0.1
    yy+=0.1
    
} else {
  xx+=0.0015
  yy+=0.0015
  
  if image_alpha<1 image_alpha+=0.15
}

if image_alpha<=0 instance_destroy()

counter++

}
