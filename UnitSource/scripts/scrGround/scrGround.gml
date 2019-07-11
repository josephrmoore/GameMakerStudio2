if !place_free(x, y+vspeed) {
    vspeed=0;
    gravity=0;
    move_contact_solid(270, -1);
    if Jumpy=0 {
       if Death[0]=0 and Hurting=0 {
       if sprite_index!=Dead {
            sprite_index=Land;
            image_index=0;
            }
        }
        Jumpy=1;
        MoveType=-1;
        Hurting=0;
    }
    Double=0;
    Move=MoveNormal;

    if Hurting=0 and Attacking Attacking=0;
}
