var control = argument0;
var type = argument1;

if (control == "A") {
    if (os_type == os_ps4)
        return 886;
    
    if (os_type == os_psvita)
        return 896;
    
    return -4;
}

if (control == "D") {
    if (os_type == os_ps4)
        return 887;
    
    if (os_type == os_psvita)
        return 897;
    
    return -4;
}

var button = -4;

if (control == "Z")
    button = global.button0;

if (control == "X")
    button = global.button1;

if (control == "C")
    button = global.button2;

if (button == 32769) {
    if (os_type == os_ps4) {
        if (type == 1)
            return 899;
        
        return 875;
    }
    
    if (os_type == os_psvita) {
        if (type == 1)
            return 911;
        
        return 889;
    }
}

if (button == 32770) {
    if (os_type == os_ps4) {
        if (type == 1)
            return 898;
        
        return 874;
    }
    
    if (os_type == os_psvita) {
        if (type == 1)
            return 910;
        
        return 888;
    }
}

if (button == 32771) {
    if (os_type == os_ps4) {
        if (type == 1)
            return 900;
        
        return 876;
    }
    
    if (os_type == os_psvita) {
        if (type == 1)
            return 912;
        
        return 890;
    }
}

if (button == 32772) {
    if (os_type == os_ps4) {
        if (type == 1)
            return 901;
        
        return 877;
    }
    
    if (os_type == os_psvita) {
        if (type == 1)
            return 913;
        
        return 891;
    }
}

if (button == 32773) {
    if (os_type == os_ps4) {
        if (type == 1)
            return 902;
        
        return 878;
    }
    
    if (os_type == os_psvita) {
        if (type == 1)
            return 914;
        
        return 892;
    }
}

if (button == 32775) {
    if (os_type == os_ps4) {
        if (type == 1)
            return 903;
        
        return 879;
    }
}

if (button == 32774) {
    if (os_type == os_ps4) {
        if (type == 1)
            return 905;
        
        return 881;
    }
    
    if (os_type == os_psvita) {
        if (type == 1)
            return 915;
        
        return 893;
    }
}

if (button == 32776) {
    if (os_type == os_ps4) {
        if (type == 1)
            return 906;
        
        return 882;
    }
}

if (button == 32779) {
    if (os_type == os_ps4) {
        if (type == 1)
            return 904;
        
        return 880;
    }
}

if (button == 32780) {
    if (os_type == os_ps4) {
        if (type == 1)
            return 907;
        
        return 883;
    }
}

if (button == 32777) {
    if (os_type == os_ps4) {
        if (type == 1)
            return 909;
        
        return 885;
    }
    
    if (os_type == os_psvita) {
        if (type == 1)
            return 916;
        
        return 894;
    }
}

if (button == 32778) {
    if (os_type == os_ps4) {
        if (type == 1)
            return 908;
        
        return 884;
    }
    
    if (os_type == os_psvita) {
        if (type == 1)
            return 917;
        
        return 895;
    }
}

return -4;
