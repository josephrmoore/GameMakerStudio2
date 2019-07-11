other.Hurt=0

if Hero!=6 and Hero!=8
{
    Hurting=1
    sprite_index=Hrt[0]
    image_index=0
}

//audio_play_sound(choose(fxHurt00, fxHurt06, fxHurt03), 1, 0)

if Hero=3 and try>0 try--
if (Hero=0 or Hero=9) and shieldCount>0 shieldCount--

if shieldCount=0 or attackSword=0 or try=0
{
    with obReturn { if other.id=selfiD destroy=1 }
}

if try<=0 {
   if halfDamage=1 other.cardHit[other.Hero, other.spellUse]=other.cardHit[other.Hero, other.spellUse]/2
   if Enemy.doubleDamage=1 other.cardHit[other.Hero, other.spellUse]=other.cardHit[other.Hero, other.spellUse]*2
   
   colorType=c_black
   
   if other.Hero=10
   {
        if irandom(100)>=50
        {
            colorType=c_red
            other.cardHit[other.Hero, other.spellUse]=other.cardHit[other.Hero, other.spellUse]*2
        }
        if irandom(100)>=70
        {
            with Enemy {
                scrDamage(painType, 1, spAttack01_10, other.image_blend, 1, other.x+irandom_range(-100, 100), other.y, image_yscale)
            }
        }
   }
   
   Health-=other.cardHit[other.Hero, other.spellUse]
   
   vikingHit--
   if vikingHit<=0 { vikingAttack[0]=3 vikingHit=4 vikingAttack[1]=1 }

   iD=instance_create(x, y-sprite_height/2, obEffect_00)
   iD.sprite_index=argument0
   iD.image_xscale=1;
   iD.image_yscale=1;
   iD.image_alpha=0.7
   iD.iD=id
   
   __view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) + ((other.cardHit[other.Hero, other.spellUse]*choose(-1, 1))/3.5) )
   __view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) + ((other.cardHit[other.Hero, other.spellUse]*choose(-1, 1))/3.5) )
   
   iD=instance_create(x, y-sprite_height, obDamageNumber)
   iD.dmg=other.cardHit[other.Hero, other.spellUse]
   iD.getx=id
   iD.color=colorType
}

if Hero=2 and shieldCount>0 {
    with Enemy {
       if Hero=0 {
           scrDamage(playerType, 1, choose(spAttack03_00), other.image_blend, 1, x, y, image_yscale)
       }
       if Hero=1 {
           scrDamage(playerType, 1, choose(spAttack00_01, spAttack02_01), other.image_blend, 1, x, y, image_yscale)
       }
       if Hero=2 {
           scrDamage(playerType, 1, choose(spAttack03_02, spAttack00_02), other.image_blend, 1, x, y, image_yscale)
       }
       if Hero=3 {
            showBowReflect=3
            scrDamage(playerType, 1, choose(spAttack01_03, spAttack00_03, spAttack02_03, spAttack03_03), other.image_blend, image_xscale, x+250*image_xscale*-1, y, image_yscale)
       }
       if Hero=4 {
            choose(
            scrDamage(playerType, 1, spAttackBeam1_04, image_blend, image_xscale*1.85, other.x, y-sprite_height/1.5, image_yscale)
            ,
            scrDamage(playerType, 1, spAttackDemon_04, image_blend, image_xscale*1.99, x, y, image_yscale*1.99)
            ,
            scrDamage(playerType, 1, spAttackBeam_04, image_blend, image_xscale*1.85, other.x, y-sprite_height/1.7, image_yscale))
       }
       if Hero=5 {
            scrDamage(playerType, 1, choose(spAttack01_05, spAttack00_05, spAttack02_05), other.image_blend, image_xscale, x-40*image_xscale, y, image_yscale)
       }
       
       if Hero=6 {
            scrDamage(playerType, 1, spAttack_06, other.image_blend, image_xscale, x, y, image_yscale)
       }
       
       if Hero=7 {
            scrDamage(playerType, 1, spAttack01_07, other.image_blend, image_xscale, x, y, image_yscale)
       }
       
       if Hero=8 {
            scrDamage(playerType, 1, spBats_08, other.image_blend, image_xscale, x, y-100, image_yscale)
       }
       
       if Hero=9 {
            scrDamage(playerType, 1, spAttack_09, other.image_blend, image_xscale, x, y, image_yscale)
       }
       if Hero=10 {
            scrDamage(playerType, 1, choose(spAttack01_10, spAttack00_10), other.image_blend, image_xscale, x, y, image_yscale)
       }
   }
   if shieldCount>0 shieldCount--
}
