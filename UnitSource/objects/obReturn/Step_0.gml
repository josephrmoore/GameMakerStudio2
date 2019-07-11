if instance_exists(selfiD) {
    x=selfiD.x
    y=selfiD.y-selfiD.sprite_height*1.5
    
} else instance_destroy()

if image_xscale<0.7 { image_xscale+=0.05 image_yscale+=0.05 }

if destroy { image_alpha-=0.03 }
if image_alpha<=0 instance_destroy()


