// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function constructors(){
	
	function Actor() constructor {
		
		enum ACTOR_SIZES {
			RECT,
			SQUARE_BIG,
			SQUARE_SMALL
		}
	
		size = ACTOR_SIZES.RECT;
		
		update = function(){
			if(size == ACTOR_SIZES.SQUARE_BIG){
				image_index = sprPlayer_big_square;
			} else if (size == ACTOR_SIZES.SQUARE_SMALL){
				image_index = sprPlayer_small;
			} else {
				image_index = sprPlayer_big_rect;
			}
		}
		draw = function(){
			
		}
	}
	
}