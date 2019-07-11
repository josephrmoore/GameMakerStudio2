if Disable and room=roGame00
{
    if step<280 step+=10
    if step>=270 step2++
}
if Disable and room=roMenu
{
    if step<150 step+=10
    if step>=140 step2++
}
x=__view_get( e__VW.WView, 0 )/2+__view_get( e__VW.XView, 0 )
y=__view_get( e__VW.YView, 0 )-40+step

if step2>=200 image_alpha-=.1

if alpha image_alpha-=.1

if image_alpha<=0 instance_destroy()

