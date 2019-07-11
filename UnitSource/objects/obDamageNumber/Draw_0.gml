draw_set_font(foMenu)

draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_set_color(color)

num+=0.01
y-=1
draw_set_alpha(1)
draw_set_alpha(image_alpha)

if alpha image_alpha-=0.1
if image_alpha<=0 instance_destroy()

draw_text_transformed(x, y, string_hash_to_newline("-"+string(ceil(dmg))), num, num, 0)
   
draw_set_alpha(1)

