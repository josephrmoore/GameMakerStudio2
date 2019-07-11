if Multiplayer=0 {
    if painDefault {
        move_towards_point(obEnemy.x,obEnemy.y-120, 30)
        } else move_towards_point(obPlayer.x, obPlayer.y-130, 30)
} else {
}
if destroy { image_xscale-=0.1 image_yscale-=0.1 }

if image_xscale<=0 instance_destroy()

