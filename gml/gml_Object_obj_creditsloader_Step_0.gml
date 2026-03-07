if (do_room_goto) {
    do_room_goto = 0;
    
    if (global.flag[512] == 0)
        room_goto(room_end_myroom);
    else
        room_goto(room_end_theend);
}
