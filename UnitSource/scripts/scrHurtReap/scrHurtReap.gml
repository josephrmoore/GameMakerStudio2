if (other.type=argument0 or other.type=2) and Death[0]=0 {
   healthScale=2;
   
    if other.sprite_index=spAttack_06 && other.Hurt and other.image_index>=8 {
       
       sprite_index=Hrt[0]
       
       hspeed=other.image_xscale*5;
       scrCase()
       
       
       if instance_exists(other.iD) other.iD.Health+=other.cardHit[other.Hero, other.spellUse]
       
       audio_play_sound(fxHurt00, 1, 0)
    }
    
     scrHurting();
}

