/// @author Alejandro Hitti
/// @description Plays the input sequence read from a file
function PlayInputRecording() {

	var player = instance_find(oPlayer, 0);

	if (player != noone)
	{
	    player._kAction = false;
    
	    while (_index < array_height_2d(_inputSequence) && _inputSequence[_index, 0] == _frame)
	    {
	        switch (_inputSequence[_index, 1])
	        {
	            case eKey.LeftPressed:   player._kLeft   = true; break;
	            case eKey.RightPressed:  player._kRight  = true; break;
	            case eKey.UpPressed:     player._kUp     = true; break;
	            case eKey.DownPressed:   player._kDown   = true; break;
	            case eKey.ActionPressed: player._kAction = true; break;
            
	            case eKey.LeftReleased:  player._kLeft  = false; break;
	            case eKey.RightReleased: player._kRight = false; break;
	            case eKey.UpReleased:    player._kUp    = false; break;
	            case eKey.DownReleased:  player._kDown  = false; break;
	        }
        
	        ++_index;
	    }
    
	    ++_frame;
	}



}
