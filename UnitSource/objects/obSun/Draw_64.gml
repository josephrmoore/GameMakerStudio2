x=display_get_gui_width()/2;
y=display_get_gui_height()/2;

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(foWelcome);
draw_set_color(c_white)

if room=roGame00 and Round=0 and Help=0 {
    count+=1
    
    if count=200 step++
    if count=450 step++
    if count=500 step++
    if count=510 {
        
        step++
        Help=1
        Enable=1
        
    }
    draw_text(x, y-180, string_hash_to_newline(helpText[step]))
}

