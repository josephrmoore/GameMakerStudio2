/// @author Alejandro Hitti
/// @description Gameplay Logic

var moveSpeed = 4;

// Movement in all directions. Accepts multiple inputs.
// NOTE: Moves faster on diagonals, but that's an easy fix.
if (_kLeft && !place_meeting(x - moveSpeed, y, oWall))
{
    x -= moveSpeed;
    sprite_index = sPlayerLeft;
    image_speed = 0.5;
}
    
if (_kRight && !place_meeting(x + moveSpeed, y, oWall))
{
    x += moveSpeed;
    sprite_index = sPlayerRight;
    image_speed = 0.5;
}
    
if (_kUp && !place_meeting(x, y - moveSpeed, oWall))
{
    y -= moveSpeed;
    sprite_index = sPlayerUp;
    image_speed = 0.5;
}
    
if (_kDown && !place_meeting(x, y + moveSpeed, oWall))
{
    y += moveSpeed;
    sprite_index = sPlayerDown;
    image_speed = 0.5;
}

// Go back to the idle position in the animation and stop it when there are no inputs
if (!_kLeft && !_kRight && !_kDown && !_kUp)
{
    image_index = 1;
    image_speed = 0;
}

// Place a pot when the action key is pressed
if (_kAction)
    instance_create_layer(x, y, "Pots", oPot);
