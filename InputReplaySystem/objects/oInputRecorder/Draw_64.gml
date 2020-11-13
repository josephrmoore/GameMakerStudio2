/// @author Alejandro Hitti
/// @description Some Debug Drawing

var color = c_white;
draw_text_color(5, 5, "Press Q to start/stop recording", color, color, color, color, 1.0);
draw_text_color(5, 25, "Press P to start/stop playing", color, color, color, color, 1.0);
draw_text_color(5, 45, "Press F5 to restart the room", color, color, color, color, 1.0);

var text = "";

if (_isRecording)
{
    color = c_red;
    text = "Recording";
}

if (_isPlaying)
{
    color = c_yellow;
    text = "Playing";
}

draw_text_color(5, 65, text, color, color, color, color, 1.0);
