/// @author Alejandro Hitti
/// @description Reads the input sequence from a file
function ReadInputRecording(argument0) {

	var file = file_text_open_read(argument0);

	var i = 0;

	while (!file_text_eof(file))
	{
	    _inputSequence[i, 0] = file_text_read_real(file);
	    _inputSequence[i, 1] = file_text_read_real(file);
	    file_text_readln(file);
    
	    ++i;
	}

	file_text_close(file);



}
