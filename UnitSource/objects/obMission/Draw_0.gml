with (obMission) {
draw_self();
draw_set_halign(fa_center);
draw_set_valign(fa_left);
draw_set_color(c_black);
draw_set_font(foMessage);

draw_set_alpha(1)
draw_set_alpha(image_alpha)

draw_text(room_width/2, room_height/2-150, string_hash_to_newline(string(Mission[missionType, 0])))

draw_set_color(c_purple);
draw_text(room_width/2, room_height/2+225, string_hash_to_newline("Reward - "+string(missionReward[missionType])+" Ruby for each star"))
//draw_sprite_ext(Standing[missionType], 0, room_width/2-480+20, room_height/2+280, 1, 1, 0, c_dkgray, obClose.image_alpha)

//if starMission[missionType]>=3 draw_sprite(spComplete, 0, room_width/2, room_height/2+240)

for (i=0; i<3; i+=1)
{
    //draw_line(x-250, room_height/2+30+i, x+160*2, room_height/2+30+i)
    //draw_line(x-250, 100+i, x+160*2, 100+i)
}

draw_set_alpha(1)

}
