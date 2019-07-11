draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_set_font(foLogo)
draw_set_color(c_white)

asdf+=.2
if image_alpha=1 and open=2 draw_sprite_ext(Standing[Type], asdf, x, y+150, 0.7, 0.7, 0, c_white, image_alpha)
/*
if image_alpha=1 and open=1 {
      draw_sprite_ext(prize[0], 0, x, y+50+50, 0.5, 0.5, 0, c_white, image_alpha)
      draw_text(x, y+100+50, amount)
}
*/
draw_self()

/* */
/*  */
