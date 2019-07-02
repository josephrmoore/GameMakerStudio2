draw_self();

if x != xprevious || y != yprevious {
    dir = round(point_direction(xprevious, yprevious, x, y)/90);
}
