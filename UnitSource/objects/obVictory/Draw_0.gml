draw_set_font(foVictory)

draw_set_halign(fa_center)
draw_set_valign(fa_middle)

draw_set_color(c_white)

draw_set_alpha(1)
draw_set_alpha(image_alpha)
/*
if roundVictory=2
{
    draw_sprite_ext(spBlack, 0, x, y+180, 5000, 5000, 0, c_white, image_alpha)
    
    starMission[missionType]=scrLoadData("missionStar"+string(missionType), 0)
    
    if starMission[missionType]=1 draw_sprite_ext(spMissionStar, 1, x, y, 1400, 1400, 0, c_white, image_alpha)
    if starMission[missionType]=2 
    {
        draw_sprite_ext(spMissionStar, 1, x-40, y, 1, 1, 0, c_white, image_alpha)
        draw_sprite_ext(spMissionStar, 1, x+40, y, 1, 14010, 0, c_white, image_alpha)
    }
    if starMission[missionType]=3
    {
        draw_sprite_ext(spMissionStar, 1, x-80, y, 1, 1, 0, c_white, image_alpha)
        draw_sprite_ext(spMissionStar, 1, x, y, 1, 1, 0, c_white, image_alpha)
        draw_sprite_ext(spMissionStar, 1, x+80, y, 1, 1, 0, c_white, image_alpha)
    }
}
*/
//if roundVictory=2 or roundDefeat=2
//   draw_sprite_ext(spBlack, 0, x, y, 5000, 5000, 0, c_white, image_alpha)

if roundVictory=2 draw_text_transformed(x, y, string_hash_to_newline("Victory"), xx, yy, 0)
if roundDefeat=2 draw_text_transformed(x, y, string_hash_to_newline("Defeat"), xx, yy, 0)

draw_set_font(foMessage)

draw_set_color(c_aqua)

draw_set_alpha(1)

/* */
/*  */
