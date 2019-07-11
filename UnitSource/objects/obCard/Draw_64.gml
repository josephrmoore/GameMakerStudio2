

if enemyCount=0 and instance_exists(obPlayer) { alpha-=.1 }
if instance_exists(obPlayer) and obPlayer.Death[0] alpha-=.1

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_black);
draw_set_font(foMessage);

draw_set_alpha(1)

with obPlayer
{
    if cardPower[Hero, other.type]>=1
    {

        draw_sprite_ext(spButtonCard, 0, other.x, other.y, 1, 1, 0, c_white, other.alpha)
        draw_text_colour(other.x+other.sprite_width/2, other.y+other.sprite_height/2, string_hash_to_newline(other.pos), c_white, c_white, c_white
        , c_white, other.alpha)
        
        draw_sprite_ext(spBackDamage, 0, other.x+other.sprite_width/2, other.y+other.sprite_height/2+35, 0.75, 0.6, 0, c_white, other.alpha)
        draw_set_font(foCardNumber)
        draw_text_colour(other.x+other.sprite_width/2, other.y+other.sprite_height/2+35,
        string_hash_to_newline(cardHit[Hero, other.type]), c_black, c_black, c_black, c_black, other.alpha)
    } else {
        draw_sprite_ext(spButtonCard, 0, other.x, other.y, 1, 1, 0, c_white, 0.25)
    }
}

/*
if !instance_exists(obBlack2) draw_sprite(spCard, type, x, y)

if !instance_exists(obBlack2) {
    with obPlayer {
         if creatureKind[Hero, 0]="Fighter"
        scrHealthbar(other.x+60, other.y+60, 55, 0,
        (cardPower[Hero, other.type]/cardMax[Hero, other.type])*100, spHealthbarBlue)
        
        if creatureKind[Hero, 0]="Mage"
        scrHealthbar(other.x+60, other.y+60, 55, 0,
        (cardPower[Hero, other.type]/cardMax[Hero, other.type])*100, spHealthbarBlue)
        
        if creatureKind[Hero, 0]="Mutant"
        scrHealthbar(other.x+60, other.y+60, 55, 0,
        (cardPower[Hero, other.type]/cardMax[Hero, other.type])*100, spHealthbarBlue)
    }
}
*/
draw_set_alpha(1)

/* */
/*  */
