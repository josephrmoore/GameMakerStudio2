//if destroy=0 { if image_alpha<1 image_alpha+=.1 } else if image_alpha>0 { image_alpha-=.1 }

draw_set_alpha(1)
if enemyCount=0 and instance_exists(obPlayer) { alpha-=.1 }
if instance_exists(obPlayer) and obPlayer.Death[0] alpha-=.1
if !instance_exists(obBlack2) draw_sprite_ext(spMove, type, x, y, 1, 1, 0, c_white, alpha)
draw_set_alpha(1)

