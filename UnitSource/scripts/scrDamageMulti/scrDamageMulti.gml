/// @description scrDamageMulti(type, alpha, sprite, color, xscale, x, y, yscale)
/// @param type
/// @param  alpha
/// @param  sprite
/// @param  color
/// @param  xscale
/// @param  x
/// @param  y
/// @param  yscale
/*
    iD=instance_create(argument5, argument6, obDamage)
    iD.sprite_index=argument2
    iD.image_index=0
    iD.image_speed=.3
    iD.image_xscale=argument4
    iD.image_alpha=argument1
    iD.image_blend=argument3
    iD.image_yscale=argument7
    iD.type=argument0
    iD.iD=id
    iD.Hurt=1
    iD.Hero=Hero
    iD.name=object_get_name(object_index)
    iD.painType=painType
    iD.playerType=playerType
    iD.spellUse=spellUse
    iD.cardHit[Hero, spellUse]=dmg
    if playerType=1 iD.getTarget=instance_nearest(x, y, obPlayerNetwork)
    if playerType=0 iD.getTarget=instance_nearest(x, y, obPlayer)
    
