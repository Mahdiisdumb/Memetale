image_xscale = 2;
image_yscale = 2;
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);

if (shock == 0) {
    facespr = 2089;
    
    if (global.faceemotion == 0)
        facespr = 2089;
    
    if (global.faceemotion == 1)
        facespr = 2093;
    
    if (global.faceemotion == 2)
        facespr = 2094;
    
    if (global.faceemotion == 3)
        facespr = 2099;
    
    if (global.faceemotion == 4)
        facespr = 2107;
    
    if (global.faceemotion == 5)
        facespr = 2096;
    
    if (global.faceemotion == 6)
        facespr = 2394;
    
    if (global.faceemotion == 7)
        facespr = 2392;
    
    if (global.faceemotion == 9)
        facespr = 2393;
    
    if (global.faceemotion == 10)
        facespr = 2397;
    
    if (global.faceemotion == 11)
        facespr = 2391;
    
    if (global.faceemotion == 12)
        facespr = 2396;
    
    if (global.faceemotion == 13)
        facespr = 2398;
    
    if (global.faceemotion == 14)
        facespr = 2395;
    
    if (global.faceemotion == 15)
        facespr = 2399;
    
    draw_sprite_ext(facespr, 0, x + 40, y - 52, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
}

if (shock == 1)
    draw_sprite_ext(spr_face_torieldie, 0, x + 40, y - 52, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
