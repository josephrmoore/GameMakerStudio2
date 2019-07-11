/// @description scrDamage(type, alpha, sprite, color, xscale, x, y, yscale)
/// @param type
/// @param  alpha
/// @param  sprite
/// @param  color
/// @param  xscale
/// @param  x
/// @param  y
/// @param  yscale

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
        iD.cardHit[Hero, spellUse]=cardHit[Hero, spellUse]
        //iD.depth=depth
        
        if playerType=0 iD.getTarget=instance_nearest(x, y, obEnemy)
        if playerType=1 iD.getTarget=instance_nearest(x, y, obPlayer)
    
    if Multiplayer!=0 {
       
        data=buffer_create(16384, buffer_vbuffer, 1)
        buffer_write(data, buffer_u8, 8)
        
        buffer_write(data, buffer_s16, argument5) //xx
        buffer_write(data, buffer_s16, argument6) //yy
        buffer_write(data, buffer_s16, argument2) //spr
        buffer_write(data, buffer_f32, argument4) //xscale
        buffer_write(data, buffer_s16, argument1) //alpha
        buffer_write(data, buffer_s16, argument3) //blend
        buffer_write(data, buffer_f32, argument7) //yscale
        buffer_write(data, buffer_s16, Hero)
        buffer_write(data, buffer_s16, spellUse)
        buffer_write(data, buffer_s16, painType)
        buffer_write(data, buffer_s16, networkiD)
        buffer_write(data, buffer_s16, playerType)
        buffer_write(data, buffer_s16, cardHit[Hero, spellUse])
        
        network_send_packet(clientSocket, data, buffer_get_size(data))
        buffer_delete(data)
    }

