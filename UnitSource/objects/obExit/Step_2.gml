x=__view_get( e__VW.WView, 0 )/2+__view_get( e__VW.XView, 0 )
y=__view_get( e__VW.YView, 0 )+170

if roundDefeat=1 or roundVictory=1 destroy=1

if destroy image_alpha-=.1
if image_alpha<=0 instance_destroy()

