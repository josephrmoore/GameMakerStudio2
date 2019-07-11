if !alpha and image_alpha<1 image_alpha+=0.1
if alpha image_alpha-=0.1

if image_alpha<=0 instance_destroy()

image_index=1

