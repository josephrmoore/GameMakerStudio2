if alpha=1 image_alpha-=0.1 else { if image_alpha<0.85 image_alpha+=0.1 }
if image_alpha<=0 instance_destroy()

