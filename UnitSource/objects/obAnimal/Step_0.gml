if Destroy image_alpha-=0.1
if image_alpha<=0 instance_destroy()

if Enemy.x>x {
    if distance_to_object(Enemy)>8 { sprite_index=Run image_xscale=1 x+=Move; } else { if Attacking=0 {
        Attacking=1 sprite_index=Atk image_index=0 scrDamage(!playerType, 0, sprite_index, c_white, image_xscale, x, y, image_yscale)  } }
    } else {
     if distance_to_object(Enemy)>8 { sprite_index=Run image_xscale=-1 x-=Move; } else { if Attacking=0 {
        Attacking=1 sprite_index=Atk image_index=0 scrDamage(!playerType, 0, sprite_index, c_white, image_xscale, x, y, image_yscale)  } }
}
/*
if sprite_index=spDog01_02 and Attacking=0 {
    
    Attacking=1
    exit
}

/* */
/*  */
