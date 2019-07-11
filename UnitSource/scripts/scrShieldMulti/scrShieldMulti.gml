/// @description scrShield(sprite, type)
/// @param sprite
/// @param  type

with obReturn { if selfiD=other.id instance_destroy() }

iD=instance_create(-100, -100, obReturn)
iD.follow=Enemy
iD.sprite_index=argument0
iD.selfiD=id
iD.type=argument1
iD.networkiD=networkiD
