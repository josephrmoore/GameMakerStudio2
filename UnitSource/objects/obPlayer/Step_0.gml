/// @description Step
if place_free(x, y+2) { Jumpy=0; if Attacking=0 && Hurting=0 && vspeed!=0 &&
    gravity!=0 && sprite_index!=Land and sprite_index!=Dead sprite_index=Jump gravity=1; }


scrPlayerStep();

