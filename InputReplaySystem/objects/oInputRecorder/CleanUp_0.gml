/// @author Alejandro Hitti
/// @description Stop Recording

if (_isRecording)
{
    WriteInputRecording(_fileName);
    _isRecording = false;
}

// Data structure cleanup
_input = 0;
_inputSequence = 0;
