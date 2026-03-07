.localvar 0 arguments
.localvar 1 advance 6050
.localvar 2 dosound 6051
.localvar 3 delay 6052
.localvar 4 ch 6053
.localvar 5 n 6054
.localvar 6 sfxtype 6055
.localvar 7 sfx 6056
.localvar 8 rnsound 6057

:[0]
push.v self.stringpos
push.v self.originalstring
call.i string_length(argc=1)
cmp.v.v GTE
bf [2]

:[1]
exit.i

:[2]
pushi.e 1
pop.v.i local.advance
pushglb.v global.typer
pushi.e 111
cmp.i.v EQ
bf [4]

:[3]
push.v local.advance
pushi.e 1
add.i.v
pop.v.v local.advance

:[4]
push.v self.txtsound
pushi.e 56
cmp.i.v EQ
bf [6]

:[5]
push.v local.advance
pushi.e 2
add.i.v
pop.v.v local.advance
b [8]

:[6]
push.v self.txtsound
pushi.e 65
cmp.i.v EQ
bf [8]

:[7]
push.v local.advance
pushi.e 1
add.i.v
pop.v.v local.advance

:[8]
pushi.e 0
pop.v.i local.dosound
push.v self.textspeed
pop.v.v local.delay

:[9]
push.v self.stringpos
push.v self.originalstring
call.i string_length(argc=1)
cmp.v.v LT
bf [11]

:[10]
pushloc.v local.advance
pushi.e 0
cmp.i.v GT
b [12]

:[11]
push.e 0

:[12]
bf [49]

:[13]
push.v self.stringpos
push.e 1
add.i.v
pop.v.v self.stringpos
push.v self.stringpos
push.v self.originalstring
call.i string_char_at(argc=2)
pop.v.v local.ch
pushloc.v local.ch
push.s "^"@49964
cmp.s.v EQ
bf [17]

:[14]
push.v self.stringpos
push.e 1
add.i.v
pop.v.v self.stringpos
push.v self.stringpos
push.v self.originalstring
call.i string_char_at(argc=2)
pop.v.v local.ch
pushloc.v local.ch
push.s "0"@3159
cmp.s.v NEQ
bf [16]

:[15]
pushloc.v local.ch
call.i real(argc=1)
pop.v.v local.n
pushloc.v local.n
pushi.e 10
mul.i.v
pop.v.v local.delay
pushi.e 1
pop.v.i local.advance

:[16]
b [48]

:[17]
pushloc.v local.ch
push.s "\\"@49965
cmp.s.v EQ
bf [41]

:[18]
push.v self.stringpos
push.e 1
add.i.v
pop.v.v self.stringpos
push.v self.stringpos
push.v self.originalstring
call.i string_char_at(argc=2)
pop.v.v local.ch
pushloc.v local.ch
push.s "S"@49966
cmp.s.v EQ
bf [28]

:[19]
push.v self.stringpos
push.e 1
add.i.v
pop.v.v self.stringpos
push.v self.stringpos
push.v self.originalstring
call.i string_char_at(argc=2)
pop.v.v local.sfxtype
pushloc.v local.sfxtype
push.s "+"@48708
cmp.s.v EQ
bf [21]

:[20]
pushi.e 1
pop.v.i self.sound_enable
b [27]

:[21]
pushloc.v local.sfxtype
push.s "-"@47113
cmp.s.v EQ
bf [23]

:[22]
pushi.e 0
pop.v.i self.sound_enable
b [27]

:[23]
pushi.e -4
pop.v.i local.sfx
pushloc.v local.sfxtype
push.s "p"@2350
cmp.s.v EQ
bf [25]

:[24]
pushi.e 105
pop.v.i local.sfx

:[25]
pushloc.v local.sfx
pushi.e -4
cmp.i.v NEQ
bf [27]

:[26]
pushloc.v local.sfx
call.i snd_play(argc=1)
popz.v

:[27]
b [40]

:[28]
pushloc.v local.ch
push.s "z"@47111
cmp.s.v EQ
bf [32]

:[29]
push.v self.stringpos
push.e 1
add.i.v
pop.v.v self.stringpos
push.v local.advance
push.e 1
sub.i.v
pop.v.v local.advance
push.v self.sound_enable
conv.v.b
bf [31]

:[30]
pushi.e 1
pop.v.i local.dosound

:[31]
b [40]

:[32]
pushloc.v local.ch
push.s "E"@47762
cmp.s.v EQ
bt [37]

:[33]
pushloc.v local.ch
push.s "F"@47599
cmp.s.v EQ
bt [37]

:[34]
pushloc.v local.ch
push.s "M"@49968
cmp.s.v EQ
bt [37]

:[35]
pushloc.v local.ch
push.s "T"@49969
cmp.s.v EQ
bt [37]

:[36]
pushloc.v local.ch
push.s "*"@49970
cmp.s.v EQ
b [38]

:[37]
push.e 1

:[38]
bf [40]

:[39]
push.v self.stringpos
push.e 1
add.i.v
pop.v.v self.stringpos

:[40]
b [48]

:[41]
pushloc.v local.ch
push.s "/"@12963
cmp.s.v NEQ
bf [44]

:[42]
pushloc.v local.ch
push.s "%"@2577
cmp.s.v NEQ
bf [44]

:[43]
pushloc.v local.ch
push.s "&"@44
cmp.s.v NEQ
b [45]

:[44]
push.e 0

:[45]
bf [48]

:[46]
push.v local.advance
push.e 1
sub.i.v
pop.v.v local.advance
push.v self.sound_enable
conv.v.b
bf [48]

:[47]
pushi.e 1
pop.v.i local.dosound

:[48]
b [9]

:[49]
pushloc.v local.delay
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
pushloc.v local.dosound
conv.v.b
bf [end]

:[50]
push.v self.txtsound
pushi.e 56
cmp.i.v EQ
bf [71]

:[51]
pushi.e 56
conv.i.v
call.i snd_stop(argc=1)
popz.v
pushi.e 57
conv.i.v
call.i snd_stop(argc=1)
popz.v
pushi.e 58
conv.i.v
call.i snd_stop(argc=1)
popz.v
pushi.e 59
conv.i.v
call.i snd_stop(argc=1)
popz.v
pushi.e 60
conv.i.v
call.i snd_stop(argc=1)
popz.v
pushi.e 61
conv.i.v
call.i snd_stop(argc=1)
popz.v
pushi.e 62
conv.i.v
call.i snd_stop(argc=1)
popz.v
pushi.e 63
conv.i.v
call.i snd_stop(argc=1)
popz.v
pushi.e 64
conv.i.v
call.i snd_stop(argc=1)
popz.v
pushi.e 9
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pop.v.v local.rnsound
pushloc.v local.rnsound
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [61]

:[52]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [62]

:[53]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [63]

:[54]
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [64]

:[55]
dup.v 0
pushi.e 4
cmp.i.v EQ
bt [65]

:[56]
dup.v 0
pushi.e 5
cmp.i.v EQ
bt [66]

:[57]
dup.v 0
pushi.e 6
cmp.i.v EQ
bt [67]

:[58]
dup.v 0
pushi.e 7
cmp.i.v EQ
bt [68]

:[59]
dup.v 0
pushi.e 8
cmp.i.v EQ
bt [69]

:[60]
b [70]

:[61]
pushi.e 56
conv.i.v
call.i snd_play(argc=1)
popz.v
b [70]

:[62]
pushi.e 57
conv.i.v
call.i snd_play(argc=1)
popz.v
b [70]

:[63]
pushi.e 58
conv.i.v
call.i snd_play(argc=1)
popz.v
b [70]

:[64]
pushi.e 59
conv.i.v
call.i snd_play(argc=1)
popz.v
b [70]

:[65]
pushi.e 60
conv.i.v
call.i snd_play(argc=1)
popz.v
b [70]

:[66]
pushi.e 61
conv.i.v
call.i snd_play(argc=1)
popz.v
b [70]

:[67]
pushi.e 62
conv.i.v
call.i snd_play(argc=1)
popz.v
b [70]

:[68]
pushi.e 63
conv.i.v
call.i snd_play(argc=1)
popz.v
b [70]

:[69]
pushi.e 64
conv.i.v
call.i snd_play(argc=1)
popz.v
b [70]

:[70]
popz.v
b [end]

:[71]
push.v self.txtsound
pushi.e 71
cmp.i.v EQ
bf [88]

:[72]
pushi.e 71
conv.i.v
call.i snd_stop(argc=1)
popz.v
pushi.e 72
conv.i.v
call.i snd_stop(argc=1)
popz.v
pushi.e 73
conv.i.v
call.i snd_stop(argc=1)
popz.v
pushi.e 74
conv.i.v
call.i snd_stop(argc=1)
popz.v
pushi.e 75
conv.i.v
call.i snd_stop(argc=1)
popz.v
pushi.e 76
conv.i.v
call.i snd_stop(argc=1)
popz.v
pushi.e 77
conv.i.v
call.i snd_stop(argc=1)
popz.v
pushi.e 7
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pop.v.v local.rnsound
pushloc.v local.rnsound
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [80]

:[73]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [81]

:[74]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [82]

:[75]
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [83]

:[76]
dup.v 0
pushi.e 4
cmp.i.v EQ
bt [84]

:[77]
dup.v 0
pushi.e 5
cmp.i.v EQ
bt [85]

:[78]
dup.v 0
pushi.e 6
cmp.i.v EQ
bt [86]

:[79]
b [87]

:[80]
pushi.e 71
conv.i.v
call.i snd_play(argc=1)
popz.v
b [87]

:[81]
pushi.e 72
conv.i.v
call.i snd_play(argc=1)
popz.v
b [87]

:[82]
pushi.e 73
conv.i.v
call.i snd_play(argc=1)
popz.v
b [87]

:[83]
pushi.e 74
conv.i.v
call.i snd_play(argc=1)
popz.v
b [87]

:[84]
pushi.e 75
conv.i.v
call.i snd_play(argc=1)
popz.v
b [87]

:[85]
pushi.e 76
conv.i.v
call.i snd_play(argc=1)
popz.v
b [87]

:[86]
pushi.e 77
conv.i.v
call.i snd_play(argc=1)
popz.v
b [87]

:[87]
popz.v
b [end]

:[88]
push.v self.txtsound
pushi.e 65
cmp.i.v EQ
bf [103]

:[89]
pushi.e 65
conv.i.v
call.i snd_stop(argc=1)
popz.v
pushi.e 66
conv.i.v
call.i snd_stop(argc=1)
popz.v
pushi.e 67
conv.i.v
call.i snd_stop(argc=1)
popz.v
pushi.e 68
conv.i.v
call.i snd_stop(argc=1)
popz.v
pushi.e 69
conv.i.v
call.i snd_stop(argc=1)
popz.v
pushi.e 70
conv.i.v
call.i snd_stop(argc=1)
popz.v
pushi.e 6
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pop.v.v local.rnsound
pushloc.v local.rnsound
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [96]

:[90]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [97]

:[91]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [98]

:[92]
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [99]

:[93]
dup.v 0
pushi.e 4
cmp.i.v EQ
bt [100]

:[94]
dup.v 0
pushi.e 5
cmp.i.v EQ
bt [101]

:[95]
b [102]

:[96]
pushi.e 65
conv.i.v
call.i snd_play(argc=1)
popz.v
b [102]

:[97]
pushi.e 66
conv.i.v
call.i snd_play(argc=1)
popz.v
b [102]

:[98]
pushi.e 67
conv.i.v
call.i snd_play(argc=1)
popz.v
b [102]

:[99]
pushi.e 68
conv.i.v
call.i snd_play(argc=1)
popz.v
b [102]

:[100]
pushi.e 69
conv.i.v
call.i snd_play(argc=1)
popz.v
b [102]

:[101]
pushi.e 70
conv.i.v
call.i snd_play(argc=1)
popz.v
b [102]

:[102]
popz.v
b [end]

:[103]
push.v self.stringpos
push.v self.originalstring
call.i string_char_at(argc=2)
pop.v.v local.ch
pushloc.v local.ch
push.s " "@18
cmp.s.v NEQ
bf [105]

:[104]
pushloc.v local.ch
push.s "　"@3340
cmp.s.v NEQ
b [106]

:[105]
push.e 0

:[106]
bf [end]

:[107]
push.v self.txtsound
call.i snd_stop(argc=1)
popz.v
push.v self.txtsound
call.i snd_play(argc=1)
popz.v

:[end]