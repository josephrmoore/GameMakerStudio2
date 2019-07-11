image_xscale=1000;
image_yscale=1000;

image_alpha=0.01

alpha=0

count=0

instance_create(-100, -100, obExit)

remove=0

alarm[0]=50
alarm[1]=5

imagealpha=1

/*
application_surface_enable(1)

surf = surface_create(display_get_gui_width(), display_get_gui_height())

surface_set_target(surf)
draw_clear_alpha(c_black, 0)

sh=sprite_add("spBlack", 1, 0, 0, 0, 0)
draw_sprite_stretched(sh, 0, 0, 0, display_get_gui_width(), display_get_gui_height())

surface_reset_target()


/* */
/*  */
