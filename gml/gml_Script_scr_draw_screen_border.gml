var border_id = argument0;
draw_enable_alphablend(0);

if (border_id == 1) {
    if (os_type == os_ps4)
        scr_draw_background_ps4(201, 0, 0);
    
    if (os_type == os_psvita)
        draw_background(bg_border_line_544, 0, 0);
}

if (border_id == 2) {
    var fade_time = 60;
    
    if (instance_exists(obj_stalkerflowey)) {
        global.screen_border_state += (1 / fade_time);
        
        if (global.screen_border_state > 1)
            global.screen_border_state = 1;
    } else {
        global.screen_border_state -= (1 / fade_time);
        
        if (global.screen_border_state < 0)
            global.screen_border_state = 0;
    }
    
    var idle_min = 300000;
    var idle_time = 0;
    
    if (obj_time.idle && current_time >= (obj_time.idle_time + idle_min))
        idle_time = current_time - (obj_time.idle_time + idle_min);
    
    var idle_frame = floor(idle_time / 100) % 3;
    var base = -4;
    var overlay;
    
    for (var i = 0; i < 9; i++) {
        overlay[i, 0] = -4;
        overlay[i, 1] = 0;
        overlay[i, 2] = 0;
    }
    
    if (os_type == os_ps4) {
        base = 207;
        overlay[0, 1] = 34;
        overlay[0, 2] = 679;
        overlay[1, 1] = 94;
        overlay[1, 2] = 939;
        overlay[2, 1] = 269;
        overlay[2, 2] = 489;
        overlay[3, 1] = 0;
        overlay[3, 2] = 319;
        overlay[4, 1] = 209;
        overlay[4, 2] = 34;
        overlay[5, 1] = 1734;
        overlay[5, 2] = 0;
        overlay[6, 1] = 1829;
        overlay[6, 2] = 359;
        overlay[7, 1] = 1789;
        overlay[7, 2] = 709;
        overlay[8, 1] = 1584;
        overlay[8, 2] = 1049;
        
        if (idle_frame == 1) {
            overlay[0, 0] = 208;
            overlay[1, 0] = 210;
            overlay[2, 0] = 212;
            overlay[3, 0] = 214;
            overlay[4, 0] = 216;
            overlay[5, 0] = 218;
            overlay[6, 0] = 220;
            overlay[7, 0] = 222;
            overlay[8, 0] = 224;
        } else if (idle_frame == 2) {
            overlay[0, 0] = 209;
            overlay[1, 0] = 211;
            overlay[2, 0] = 213;
            overlay[3, 0] = 215;
            overlay[4, 0] = 217;
            overlay[5, 0] = 219;
            overlay[6, 0] = 221;
            overlay[7, 0] = 223;
            overlay[8, 0] = 225;
        }
        
        if (global.screen_border_state > 0)
            overlay1 = 226;
    } else if (os_type == os_psvita) {
        base = 227;
        overlay[0, 1] = 18;
        overlay[0, 2] = 304;
        overlay[1, 1] = 54;
        overlay[1, 2] = 460;
        overlay[2, 1] = 0;
        overlay[2, 2] = 88;
        overlay[3, 1] = 880;
        overlay[3, 2] = 0;
        overlay[4, 1] = 937;
        overlay[4, 2] = 199;
        overlay[5, 1] = 913;
        overlay[5, 2] = 409;
        
        if (idle_frame == 1) {
            overlay[0, 0] = 228;
            overlay[1, 0] = 230;
            overlay[2, 0] = 232;
            overlay[3, 0] = 234;
            overlay[4, 0] = 236;
            overlay[5, 0] = 238;
        } else if (idle_frame == 2) {
            overlay[0, 0] = 229;
            overlay[1, 0] = 231;
            overlay[2, 0] = 233;
            overlay[3, 0] = 235;
            overlay[4, 0] = 237;
            overlay[5, 0] = 239;
        }
        
        if (global.screen_border_state > 0)
            overlay1 = 240;
    }
    
    if (base != -4) {
        scr_draw_background_ps4(base, 0, 0);
        
        if (overlay[0, 0] != -4) {
            if (global.screen_border_state > 0) {
                draw_enable_alphablend(1);
                draw_set_alpha(global.screen_border_state * 0.5);
            }
            
            scr_draw_background_ps4(overlay[0, 0], overlay[0, 1], overlay[0, 2]);
            
            if (global.screen_border_state > 0) {
                draw_set_alpha(1);
                draw_enable_alphablend(0);
            }
        }
        
        for (var i = 1; i < 9; i++) {
            if (overlay[i, 0] != -4)
                scr_draw_background_ps4(overlay[i, 0], overlay[i, 1], overlay[i, 2]);
        }
    }
}

if (border_id == 3) {
    var room_id = global.currentroom;
    
    if ((room_id >= 4 && room_id <= 43) || (room >= room_introstory && room <= room_intromenu) || (room >= room_settings && room <= room_controltest))
        border_id = 4;
    
    if ((room_id >= 44 && room_id <= 81) || room_id == 311 || (room_id >= 265 && room_id <= 266))
        border_id = 5;
    
    if ((room_id >= 82 && room_id <= 136) || room_id == 312 || room_id == 315)
        border_id = 6;
    
    if ((room_id >= 137 && room_id <= 215) || room_id == 313 || room_id == 314 || (room_id >= 242 && room_id <= 243))
        border_id = 7;
    
    if (room_id >= 216 && room_id <= 240)
        border_id = 8;
    
    if (room_id >= 244 && room_id <= 263)
        border_id = 9;
    
    if (room_id == 136 || room_id == 213 || room_id == 215 || room_id == 242 || room_id == 243 || room_id == 316 || room_id == 335)
        border_id = 3.5;
    
    if (global.flag[479] == 0 && (room_id == 244 || room_id == 245))
        border_id = 3.5;
    
    if (border_id != global.screen_border_state) {
        if (global.screen_border_state != 0) {
            if (global.screen_border_dynamic_fade_id == border_id)
                global.screen_border_dynamic_fade_level = 1 - global.screen_border_dynamic_fade_level;
            else
                global.screen_border_dynamic_fade_level = 1;
            
            global.screen_border_dynamic_fade_id = global.screen_border_state;
        }
        
        global.screen_border_state = border_id;
    }
    
    if (global.screen_border_dynamic_fade_level > 0) {
        var fade_time = 30;
        global.screen_border_dynamic_fade_level -= (1 / fade_time);
        
        if (global.screen_border_dynamic_fade_level > 0) {
            scr_draw_screen_border(global.screen_border_dynamic_fade_id);
            draw_set_alpha(1 - global.screen_border_dynamic_fade_level);
        } else {
            global.screen_border_dynamic_fade_id = 0;
            global.screen_border_dynamic_fade_level = 0;
        }
    }
}

if (border_id == 3.5) {
    draw_set_color(c_black);
    ossafe_fill_rectangle(0, 0, window_get_width() - 1, window_get_height() - 1);
    draw_set_color(c_white);
}

if (border_id == 4) {
    if (os_type == os_ps4)
        scr_draw_background_ps4(205, 0, 0);
    
    if (os_type == os_psvita)
        draw_background(bg_border_ruins_544, 0, 0);
}

if (border_id == 5) {
    if (os_type == os_ps4)
        scr_draw_background_ps4(243, 0, 0);
    
    if (os_type == os_psvita)
        draw_background(bg_border_tundra_544, 0, 0);
}

if (border_id == 6) {
    if (os_type == os_ps4)
        scr_draw_background_ps4(245, 0, 0);
    
    if (os_type == os_psvita)
        draw_background(bg_border_water1_544, 0, 0);
}

if (border_id == 7) {
    if (os_type == os_ps4)
        scr_draw_background_ps4(199, 0, 0);
    
    if (os_type == os_psvita)
        draw_background(bg_border_fire_544, 0, 0);
}

if (border_id == 8) {
    if (os_type == os_ps4)
        scr_draw_background_ps4(197, 0, 0);
    
    if (os_type == os_psvita)
        draw_background(bg_border_castle_544, 0, 0);
}

if (border_id == 9) {
    if (os_type == os_ps4)
        scr_draw_background_ps4(241, 0, 0);
    
    if (os_type == os_psvita)
        draw_background(bg_border_truelab_544, 0, 0);
}

if (border_id == 10) {
    if (os_type == os_ps4)
        scr_draw_background_ps4(203, 0, 0);
    
    if (os_type == os_psvita)
        draw_background(bg_border_rad_544, 0, 0);
}

draw_set_alpha(1);
draw_enable_alphablend(1);
