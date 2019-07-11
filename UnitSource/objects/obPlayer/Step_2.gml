if sprite_index=Jump and !Hurting {
   if vspeed<0 image_index=1 else image_index=0
}

if yRange<110 and (!instance_exists(obBlack2) and !instance_exists(obBlack3)) yRange+=10
if yRange>=110 yRange=110

if yRange<110 and (instance_exists(obBlack2) and instance_exists(obBlack3)) yRange=-180
/*
if Death[0] and speed!=0 {
   view_xview+=random_range(-5, 5)
   view_yview+=random_range(-5, 5)
}
*/
if hp<=0 and Death[0]=0 and gravity=0 and Enemy.Death[0]=0 and !instance_exists(obAlly) {

   Death[0]=1
   
   sprite_index=Dead;
   image_index=0;
   friction=.15
   
   Enable=0
   roundWon=0
   
   with obButtons destroy=1
   
   audio_stop_sound(audioMusic[1])
   audio_stop_sound(fxRound3)
   
   roundDefeat+=1
   
   //if roundDefeat=2 room_speed=20
   if !audio_is_playing(fxFantasy) and roundDefeat=2 audio_play_sound(fxFantasy, 1, 0)
   //if !audio_is_playing(fxFantasy) and roundDefeat<2 audio_play_sound(fxRound1, 1, 0)
   
    with obSun { trigger=1 match=0 }
   
    scrSaveData("Defeated", 1)
    
    scrPlayerDeath()
    
}
if hp<=0 and Death[0]=0 and gravity=0 and Enemy.Death[0]=0 and instance_exists(obAlly) {
   Death[0]=1
   sprite_index=Dead;
   image_index=0;
   friction=.15
   
   camEnd=1
   roundWon=0
   if obAlly.Death[0] {
       Enable=0
       
       with obButtons destroy=1
       
       audio_stop_sound(audioMusic[1])
       audio_stop_sound(fxRound3)
       
       roundDefeat+=1
       
       //if roundDefeat=2 room_speed=20
       if !audio_is_playing(fxFantasy) and roundDefeat=2 audio_play_sound(fxFantasy, 1, 0)
       //if !audio_is_playing(fxFantasy) and roundDefeat<2 audio_play_sound(fxRound1, 1, 0)
       
        with obSun { trigger=1 match=0 }
       
        scrSaveData("Defeated", 1)

    }
    
    scrPlayerDeath()
}
if Death[0] { depth=-90 }

if Multiplayer=0
{
    if !instance_exists(obAlly)
    {
      __view_set( e__VW.XView, 0, clamp(__view_get( e__VW.XView, 0 ) + ((x-(__view_get( e__VW.WView, 0 )/2)) - __view_get( e__VW.XView, 0 )) * 0.1, 0, room_width - __view_get( e__VW.WView, 0 )) )
      __view_set( e__VW.YView, 0, clamp(__view_get( e__VW.YView, 0 ) + ((y-(__view_get( e__VW.HView, 0 )/1.5)) - __view_get( e__VW.YView, 0 )) * 0.1, 0, room_height - __view_get( e__VW.HView, 0 )) )
    } else {
    if !Death[0] {
          __view_set( e__VW.XView, 0, clamp(__view_get( e__VW.XView, 0 ) + ((x-(__view_get( e__VW.WView, 0 )/2)) - __view_get( e__VW.XView, 0 )) * 0.1, 0, room_width - __view_get( e__VW.WView, 0 )) )
          __view_set( e__VW.YView, 0, clamp(__view_get( e__VW.YView, 0 ) + ((y-(__view_get( e__VW.HView, 0 )/1.5)) - __view_get( e__VW.YView, 0 )) * 0.1, 0, room_height - __view_get( e__VW.HView, 0 )) )
      } else {
        with obAlly {
          __view_set( e__VW.XView, 0, clamp(__view_get( e__VW.XView, 0 ) + ((x-(__view_get( e__VW.WView, 0 )/2)) - __view_get( e__VW.XView, 0 )) * 0.1, 0, room_width - __view_get( e__VW.WView, 0 )) )
          __view_set( e__VW.YView, 0, clamp(__view_get( e__VW.YView, 0 ) + ((y-(__view_get( e__VW.HView, 0 )/1.5)) - __view_get( e__VW.YView, 0 )) * 0.1, 0, room_height - __view_get( e__VW.HView, 0 )) )
       }
      }
    }
    
    if instance_exists(obAlly) and Death[0] and obAlly.Death[0]=0 {
       with obAlly {
          __view_set( e__VW.XView, 0, clamp(__view_get( e__VW.XView, 0 ) + ((x-(__view_get( e__VW.WView, 0 )/2)) - __view_get( e__VW.XView, 0 )) * 0.1, 0, room_width - __view_get( e__VW.WView, 0 )) )
          __view_set( e__VW.YView, 0, clamp(__view_get( e__VW.YView, 0 ) + ((y-(__view_get( e__VW.HView, 0 )/1.5)) - __view_get( e__VW.YView, 0 )) * 0.1, 0, room_height - __view_get( e__VW.HView, 0 )) )
       }
    }
    
    with Enemy {
         if other.Death[0]=0 and other.camRestore and enemyCount!=0 and distance_to_object(other.id)<=1500 and Death[0]=0
         {
             __view_set( e__VW.XView, 0, clamp(__view_get( e__VW.XView, 0 ) + ((x-(__view_get( e__VW.WView, 0 )/2)) - __view_get( e__VW.XView, 0 )) * 0.1, 0, room_width - __view_get( e__VW.WView, 0 )) )
             __view_set( e__VW.YView, 0, clamp(__view_get( e__VW.YView, 0 ) + ((y-(__view_get( e__VW.HView, 0 )/1.5)) - __view_get( e__VW.YView, 0 )) * 0.1, 0, room_height - __view_get( e__VW.HView, 0 )) )
         }
    }
}
if !Disable {
   var ratio;
   ratio = __view_get( e__VW.HPort, 0 ) / __view_get( e__VW.WPort, 0 )
   __view_set( e__VW.WView, 0, __view_get( e__VW.WView, 0 ) + (22) )
   __view_set( e__VW.HView, 0, __view_get( e__VW.HView, 0 ) + (22 * ratio) );
}

/* */
/*  */
