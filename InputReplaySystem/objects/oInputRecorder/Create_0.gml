/// @author Alejandro Hitti
/// @description Initialization

// Only one copy of this should be running
MakeUnique();

// Keys Enum
enum eKey
{
    LeftPressed = 0,
    RightPressed,
    UpPressed,
    DownPressed,
    ActionPressed,
    
    LeftReleased,
    RightReleased,
    UpReleased,
    DownReleased,
    
    NUM_KEYS
}

// Variables
_fileName = "Recording_" + string(room_get_name(room)) + ".txt";

// Check if currently recording or playing
_isRecording = false;
_isPlaying   = false;

// Variables to keep track of the frames
_frame = 0;
_index = 0;

// Arrays to store the keys to record, and the recorded values and frames
_input         = array_create(eKey.NUM_KEYS, false);
_inputSequence = [0, 0];

// Hotkeys to start/stop recording and playback
_kRecord = 0;
_kPlay   = 0;
