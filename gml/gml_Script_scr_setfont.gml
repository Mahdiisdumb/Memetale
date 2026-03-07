var newfont = argument0;

if (global.language == "ja") {
    if (newfont == 1)
        newfont = 13;
    
    if (newfont == 2)
        newfont = 14;
    
    if (newfont == 4)
        newfont = 17;
}

draw_set_font(newfont);
