//draw_self();

//scrHealthbar(x, y, 102, 0, obPlayer.hp, spFancyLight2)
//scrHealthbar(x, y, 102, 0, (Time*60*3)/100, spTime)

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_black);
draw_set_font(foMessage);

//if Time=3 audio_play_sound(fxHeartbeat, 1, 0)

if Time>=0 Time--
if Time<=0 { Disable=1 }

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(foMessage)

if Time>=0 and Disable=0 {
    //draw_text_transformed(x, y, ceil(Time/60), 1, 1, 0)
}

if trigger and match=0 {
    match=1
    Time=Time2
    if roundDefeat=2 {
      alarm[0]=room_speed*4.5
    }
    
    if roundDefeat!=2 {
       alarm[0]=room_speed*1.75
    }
    if Round<3 Round++
}


if image_blend=c_gray and match=0 {
   if roundVictory!=2 {
        alarm[0]=room_speed*2
   }
        if roundVictory=2 {
           alarm[0]=room_speed*3
        }
    match=1
    Time=Time2
    if Round<3 Round++
}


