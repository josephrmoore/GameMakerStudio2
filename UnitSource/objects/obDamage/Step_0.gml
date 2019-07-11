if sprite_index=spAttack03_01 vspeed+=4
if sprite_index=spAttack04_01 hspeed+=9*image_xscale
if sprite_index=spAttack03_02 hspeed=20*image_xscale

if sprite_index=spArrow_03 hspeed+=9*image_xscale
if sprite_index=spArrow0_03 hspeed+=13*image_xscale
if sprite_index=spArrow1_03 hspeed+=6*image_xscale
if sprite_index=spArrow2_03 hspeed+=10*image_xscale

if sprite_index=spAttackBeam1_04 hspeed+=5*image_xscale

if sprite_index=spKnife_05 y+=40

if sprite_index=spAttack04_05 { image_speed=.2 depth=-70 
   if getTarget.x>x { image_xscale=0.5 x+=8 } else { image_xscale=-0.5 x-=8 } }
   
if sprite_index=spDog00_02 { x+=30*image_xscale }
if sprite_index=spDog00_02 and distance_to_object(getTarget)<15 { sprite_index=spDog01_02 }

if destroy image_alpha-=0.25

if sprite_index=spApple_07 { hspeed+=2*image_xscale }

if sprite_index=spBats_08
{
    y+=irandom_range(1, -1)
    hspeed+=2*image_xscale
}

