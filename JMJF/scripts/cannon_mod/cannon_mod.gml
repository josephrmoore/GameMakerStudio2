/// @function cannon_mod(mod_type, mod_value)
/// @description Modify the cannons on the screen in 5 different ways
/// @param mod_type String to define which mod type is used: add, remove, firing, speed, bulletspeed
/// @param mod_value Real A number to describe how many cannons to add/remove, or the new values for firing rate, speed, and bullet speed

function cannon_mod(argument0){
	
	var id_from_button = argument0;
	switch(id_from_button){
		case 1:
			add_cannon(2, 0);
			add_cannon(2, 1);
			break;
		case 2:
			with(oCannon){
				bullet_speed = 4;
			}
			break;
		case 3:
			with(oCannon){
				mSpeed = 1.5;
			}
			with(oCannon){
				growing = true;
			}
			break;
		case 4:
			with(oCannon){
				firing_rate = 1;
			}
			with(oCannon){
				wave_bullets = true;
			}
			break;
		case 5:
			add_cannon(4, 0);
			add_cannon(4, 1);
			break;
		case 6:
			with(oCannon){
				firing_rate = 0.5;
			}
			break;
		case 7:
			add_cannon(3, 0);
			add_cannon(3, 1);
			break;
		case 8:
			with(oCannon){
				mSpeed = 2;
			}
			break;
		case 9:
			delete_cannon(20);
			break;
	}
}