/*
with obPlayerParent {
     if image_alpha {
         if vspeed=0 {
            stepShadow=0 draw_sprite_ext(sprite_index, image_index, x, obGround.y-80, image_xscale, -.5, image_angle, c_black, 0.3) } else {
            if vspeed<0 {
               if stepShadow>-1 stepShadow-=0.009
               draw_sprite_ext(sprite_index, image_index, x, obGround.y-80, image_xscale, -.5+stepShadow, image_angle, c_black, (0.3+stepShadow*3))
               } else if vspeed>0 {
                 if stepShadow<0.1 stepShadow+=0.009
                 draw_sprite_ext(sprite_index, image_index, x, obGround.y-80, image_xscale, -.5+stepShadow, image_angle, c_black, (0.3+stepShadow*3))
               }
         }
    }
}
