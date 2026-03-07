if (stringpos >= string_length(originalstring))
    exit;

var advance = 1;

if (global.typer == 111)
    advance += 1;

if (txtsound == 56)
    advance += 2;
else if (txtsound == 65)
    advance += 1;

var dosound = 0;
var delay = textspeed;

while (stringpos < string_length(originalstring) && advance > 0) {
    stringpos++;
    var ch = string_char_at(originalstring, stringpos);
    
    if (ch == "^") {
        stringpos++;
        ch = string_char_at(originalstring, stringpos);
        
        if (ch != "0") {
            var n = real(ch);
            delay = n * 10;
            advance = 1;
        }
    } else if (ch == "\") {
        stringpos++;
        ch = string_char_at(originalstring, stringpos);
        
        if (ch == "S") {
            stringpos++;
            var sfxtype = string_char_at(originalstring, stringpos);
            
            if (sfxtype == "+") {
                sound_enable = 1;
            } else if (sfxtype == "-") {
                sound_enable = 0;
            } else {
                var sfx = -4;
                
                if (sfxtype == "p")
                    sfx = 105;
                
                if (sfx != -4)
                    snd_play(sfx);
            }
        } else if (ch == "z") {
            stringpos++;
            advance--;
            
            if (sound_enable)
                dosound = 1;
        } else if (ch == "E" || ch == "F" || ch == "M" || ch == "T" || ch == "*") {
            stringpos++;
        }
    } else if (ch != "/" && ch != "%" && ch != "&") {
        advance--;
        
        if (sound_enable)
            dosound = 1;
    }
}

alarm[0] = delay;

if (dosound) {
    if (txtsound == 56) {
        snd_stop(56);
        snd_stop(57);
        snd_stop(58);
        snd_stop(59);
        snd_stop(60);
        snd_stop(61);
        snd_stop(62);
        snd_stop(63);
        snd_stop(64);
        var rnsound = floor(random(9));
        
        switch (rnsound) {
            case 0:
            
                snd_play(56);
                break;
            
            case 1:
            
                snd_play(57);
                break;
            
            case 2:
            
                snd_play(58);
                break;
            
            case 3:
            
                snd_play(59);
                break;
            
            case 4:
            
                snd_play(60);
                break;
            
            case 5:
            
                snd_play(61);
                break;
            
            case 6:
            
                snd_play(62);
                break;
            
            case 7:
            
                snd_play(63);
                break;
            
            case 8:
            
                snd_play(64);
                break;
        }
    } else if (txtsound == 71) {
        snd_stop(71);
        snd_stop(72);
        snd_stop(73);
        snd_stop(74);
        snd_stop(75);
        snd_stop(76);
        snd_stop(77);
        var rnsound = floor(random(7));
        
        switch (rnsound) {
            case 0:
            
                snd_play(71);
                break;
            
            case 1:
            
                snd_play(72);
                break;
            
            case 2:
            
                snd_play(73);
                break;
            
            case 3:
            
                snd_play(74);
                break;
            
            case 4:
            
                snd_play(75);
                break;
            
            case 5:
            
                snd_play(76);
                break;
            
            case 6:
            
                snd_play(77);
                break;
        }
    } else if (txtsound == 65) {
        snd_stop(65);
        snd_stop(66);
        snd_stop(67);
        snd_stop(68);
        snd_stop(69);
        snd_stop(70);
        var rnsound = floor(random(6));
        
        switch (rnsound) {
            case 0:
            
                snd_play(65);
                break;
            
            case 1:
            
                snd_play(66);
                break;
            
            case 2:
            
                snd_play(67);
                break;
            
            case 3:
            
                snd_play(68);
                break;
            
            case 4:
            
                snd_play(69);
                break;
            
            case 5:
            
                snd_play(70);
                break;
        }
    } else {
        var ch = string_char_at(originalstring, stringpos);
        
        if (ch != " " && ch != "　") {
            snd_stop(txtsound);
            snd_play(txtsound);
        }
    }
}
