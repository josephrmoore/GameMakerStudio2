var lvl = argument0;
oGame.game_state = GAMESTATE.LEVELS;
oGame.current_room = lvl;
room_goto(asset_get_index(lvl));