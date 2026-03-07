if (havewater == 0) {
    global.flag[366] = 1;
    havewater = 1;
    
    with (obj_mainchara) {
        dsprite = 1125;
        rsprite = 1123;
        usprite = 1124;
        lsprite = 1122;
    }
} else {
    event_user(2);
    global.flag[366] = 0;
    havewater = 0;
    
    with (obj_mainchara) {
        dsprite = 1131;
        rsprite = 1133;
        usprite = 1132;
        lsprite = 1134;
    }
}
