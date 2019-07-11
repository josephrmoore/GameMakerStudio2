
draw_set_alpha(1)
draw_set_alpha(image_alpha)

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_set_font(foCustom);

for (i=0; i<3; i+=1)
{
    //draw_line(room_height/2-300, room_height/2+200+i, room_width/2+300*2, room_height/2+200+i)
    //draw_line(room_height/2-300, 100+i, room_width/2+300*2, 100+i)
}

//draw_self()

if Type=2 draw_sprite_ext(Standing[Champion], Timer, x, y+100, 0.5, 0.5, 0, c_white, image_alpha)

//if Type=2 and !champOwned[Champion] draw_text(x, y-100, "Character not owned#Tap Next or back")
//if Type=2 and !arcadeMode draw_text(x, 180, "Some characters can't beat certain missions.#Choose your character for this mission.")

//if !champOwned[Champion] {
/*
if Type<4
{
 draw_sprite_ext(bodyType[Champion], Type, x+15*Type, y-220, 0.5, 0.5, 1, c_white, image_alpha)
 draw_text(x+35+15*Type, y-270, Shard[Champion, Type])
}
*/
//}
/*
if champOwned[Champion] draw_text(room_width/2, room_height/2-270, stickName[Champion]) else
   draw_text(room_width/2, room_height/2-270, "stick not owned")
*/
//if distance_to_point(mouse_x, mouse_y)=0 {
    draw_set_color(c_black)
    //if Champion!=4 draw_sprite_ext(spellType[Champion, Type], Timer, x, y+95, 0.7, 0.7, 0, image_blend, image_alpha)
    //if Champion=4 draw_sprite_ext(spellType[Champion, Type], Timer, x, y+95, 0.5, 0.5, 0, image_blend, image_alpha)
    
    //if distance_to_point(mouse_x, mouse_y)=0 and (Unlock>=room_speed*3.5 or cardBought[Champion, Type]) and champOwned[Champion]
       
       
    //if distance_to_point(mouse_x, mouse_y)!=0 { if Unlock<=room_speed*4 Unlock+=room_speed*4 }
//}

//if cardBought[Champion, Type]=0 or !champOwned[Champion] draw_sprite(spLocked, 0, x, y)

//if !champOwned[Champion] and distance_to_point(mouse_x, mouse_y)=0
   
/*
if distance_to_point(mouse_x, mouse_y)=0 {
   draw_set_color(c_white)
   if champOwned[Champion] {
       if cardBought[Champion, Type]=0 draw_healthbar(room_width/2-100, room_height/2-250-3, room_width/2+100,
        room_height/2-250+3, (Unlock/220)*100, c_white, c_black, c_black, 0, 1, 1)
        
        //if Unlock<room_speed*3.5 and Unlock>room_speed*3
        if Unlock>room_speed*3 and !cardBought[Champion, Type] draw_text(room_width/2, room_height/2-240, "hold to buy")
        
        if Unlock<room_speed*3 and Unlock>=0 draw_text(room_width/2, room_height/2-240, "...")
         
        if Unlock<=0 and cardBought[Champion, Type]=0 and champOwned[Champion] {
            if Ruby>=cardCost[Champion, Type] {
                Ruby-=cardCost[Champion, Type]
                audio_play_sound(fxUnlock, 1, 0)
                cardBought[Champion, Type]=1

                scrSaveData("cardBought"+string(Champion)+""+string(Type), cardBought[Champion, Type])
                scrSaveData("Champion", Champion)
                
            } else draw_text(room_width/2, room_height/2-220, "not enough ruby")
        }
    }
}

if !champOwned[Champion] {
   //draw_text(room_width/2, room_height/2-230, "parts required")
   if partLimit[Champion]>Type draw_sprite(bodyType[Champion], Type,
   room_width/2-80*partLimit[Champion]+200*Type, room_height/2-150)
}

*/
draw_set_color(c_black);
draw_set_font(foTimer);

//draw_sprite(spBackDamage, 1, x+30, y-70);
//draw_text(x+30, y-70, cardPower[Champion, Type]);
draw_set_font(foCustom);

//draw_sprite_ext(spButtonSkin, 0, x, y-121, 0.85, 0.45, 0, c_white, image_alpha)
//draw_text(x, y-121, cardName[Champion, Type]);

//draw_set_color(c_white);
draw_sprite_ext(spTextButton, 0, x, y+145, 1.2, 1.6, 0, c_white, image_alpha)
draw_text(x, y+145, string_hash_to_newline(string(cardSpec[Champion, Type])))
//draw_text(x, y+y/2+80, cardType[Champion, Type]);
if !cardBought[Champion, Type] {
    draw_sprite_ext(spRubyIcon, 0, x, y-140+5, 0.4, 0.4, 1, c_white, image_alpha)
    draw_text(x, y-160+5, string_hash_to_newline(cardCost[Champion, Type]))
}

draw_set_color(c_black)
if Type=2 draw_text(x, 70, string_hash_to_newline("Name - "+string(stickName[Champion])))
//if Type=2 draw_text(x, 100, "Type - "+string(creatureKind[Champion, 0]))
if Type=2 draw_text(x, 100, string_hash_to_newline("Health - "+string(Healthy[Champion, 1])))

if ceil(cardHitGlobal[Champion, Type])=0 draw_sprite(spBackDamage, 1, x, y+210)
   else draw_sprite(spBackDamage, 0, x, y+210);
   
if cardHitGlobal[Champion, Type]!=0 draw_text(x, y+210, string_hash_to_newline(ceil(cardHitGlobal[Champion, Type])))
else draw_text(x, y+210, string_hash_to_newline("B"))


draw_set_alpha(1)

/* */
/*  */
