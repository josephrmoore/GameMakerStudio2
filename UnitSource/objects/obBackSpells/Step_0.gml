Timer+=0.15

if !instance_exists(obBlack) instance_destroy();

image_index=cardAcitve[Champion, Type];

if alpha=1 image_alpha-=0.1;
if alpha!=1 && image_alpha<1 image_alpha+=0.1;


