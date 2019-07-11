if Hero=3 and (sprite_index=spAttack00_03 or sprite_index=spAttack01_03 
   or sprite_index=spAttack02_03 or sprite_index=spAttack03_03) {
    draw_sprite_ext(spBow_03, 0, x, y-sprite_height/1.5, 0.7, 0.7, 15, image_blend, 1)
    draw_sprite_ext(spArrowpack_03, 0, x, y-sprite_height/1.5, 0.7, 0.7, 15, c_black, 1)
}
draw_self()

