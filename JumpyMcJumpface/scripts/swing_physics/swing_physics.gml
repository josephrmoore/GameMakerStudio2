angle = point_direction(x,y,anchor_x,anchor_y);
angle_acceleration = -0.2* dcos(angle);
angle_velocity += angle_acceleration;
angle_velocity = clamp(angle_velocity, -3, 3);
angle += angle_velocity;

anchor_x = x + lengthdir_x(length,angle);
anchor_y = y + lengthdir_y(length,angle);



