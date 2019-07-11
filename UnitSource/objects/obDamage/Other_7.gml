if Hero=3 {
   if (sprite_index=spAttack00_03)
      scrDamage(playerType, 1, spArrow_03, image_blend, image_xscale, x+250*image_xscale*-1, y-sprite_height/1.6, image_yscale)
      
   if (sprite_index=spAttack01_03) and showBowReflect>0 {
      showBowReflect--
      scrDamage(playerType, 1, spArrow0_03, image_blend, image_xscale, x+125*image_xscale*-1, y-sprite_height/1.6, image_yscale)
      scrDamage(playerType, 1, spAttack01_03, image_blend, image_xscale, x, y, image_yscale)
   }
   
   if (sprite_index=spAttack02_03) 
      scrDamage(playerType, 1, spArrow1_03, c_white, image_xscale, x+250*image_xscale*-1, y-sprite_height/1.6, image_yscale)
      
   if (sprite_index=spAttack03_03) 
      scrDamage(playerType, 1, spArrow2_03, c_white, image_xscale, x+250*image_xscale*-1, y-sprite_height/1.6, image_yscale)
   
   if (sprite_index=spAttack00_03) or (sprite_index=spAttack01_03)
   {
    if Audio audio_play_sound(fxBowRelease, 2, 0)
   }
   
   if (sprite_index=spAttack02_03 or sprite_index=spAttack03_03)
   if Audio audio_play_sound(fxFire, 2, 0)
}

if image_alpha=1 destroy=1 else instance_destroy()

image_index=image_number-1

