.localvar 0 arguments
.localvar 1 oldcoord 1673
.localvar 2 tempcheck 1674
.localvar 3 mv 1675

:[0]
pushi.e 40
conv.i.v
call.i keyboard_check_pressed(argc=1)
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushglb.v global.mnfight
pushi.e 0
cmp.i.v EQ
bf [end]

:[2]
pushglb.v global.bmenuno
pushi.e 1
cmp.i.v EQ
bt [5]

:[3]
pushglb.v global.bmenuno
pushi.e 2
cmp.i.v EQ
bt [5]

:[4]
pushglb.v global.bmenuno
pushi.e 11
cmp.i.v EQ
b [6]

:[5]
push.e 1

:[6]
bf [31]

:[7]
pushi.e -5
pushi.e 1
push.v [array]global.bmenucoord
pop.v.v local.oldcoord
pushi.e -5
pushi.e 1
dup.i 1
push.v [array]global.bmenucoord
pushi.e 1
sub.i.v
pop.i.v [array]global.bmenucoord
pushi.e -5
pushi.e 1
push.v [array]global.bmenucoord
pushi.e 0
cmp.i.v LT
bf [9]

:[8]
pushi.e 2
pushi.e -5
pushi.e 1
pop.v.i [array]global.bmenucoord

:[9]
pushi.e -5
pushi.e 0
push.v [array]global.monster
pushi.e 0
cmp.i.v EQ
bf [11]

:[10]
pushi.e -5
pushi.e 2
push.v [array]global.monster
pushi.e 0
cmp.i.v EQ
b [12]

:[11]
push.e 0

:[12]
bf [14]

:[13]
pushi.e 1
pushi.e -5
pushi.e 1
pop.v.i [array]global.bmenucoord

:[14]
pushi.e -5
pushi.e 1
push.v [array]global.bmenucoord
pushi.e 2
cmp.i.v EQ
bf [16]

:[15]
pushi.e -5
pushi.e 2
push.v [array]global.monster
pushi.e 0
cmp.i.v EQ
b [17]

:[16]
push.e 0

:[17]
bf [19]

:[18]
pushi.e 1
pushi.e -5
pushi.e 1
pop.v.i [array]global.bmenucoord

:[19]
pushi.e -5
pushi.e 1
push.v [array]global.bmenucoord
pushi.e 1
cmp.i.v EQ
bf [21]

:[20]
pushi.e -5
pushi.e 1
push.v [array]global.monster
pushi.e 0
cmp.i.v EQ
b [22]

:[21]
push.e 0

:[22]
bf [24]

:[23]
pushi.e 0
pushi.e -5
pushi.e 1
pop.v.i [array]global.bmenucoord

:[24]
pushi.e -5
pushi.e 1
push.v [array]global.bmenucoord
pushi.e 0
cmp.i.v EQ
bf [26]

:[25]
pushi.e -5
pushi.e 0
push.v [array]global.monster
pushi.e 0
cmp.i.v EQ
b [27]

:[26]
push.e 0

:[27]
bf [29]

:[28]
pushi.e 2
pushi.e -5
pushi.e 1
pop.v.i [array]global.bmenucoord

:[29]
pushi.e -5
pushi.e 1
push.v [array]global.bmenucoord
pushloc.v local.oldcoord
cmp.v.v NEQ
bf [31]

:[30]
pushi.e 115
conv.i.v
call.i snd_play(argc=1)
popz.v

:[31]
pushglb.v global.bmenuno
pushi.e 10
cmp.i.v EQ
bf [53]

:[32]
pushi.e -5
pushi.e 2
push.v [array]global.bmenucoord
pop.v.v local.oldcoord
pushi.e -5
pushi.e 2
push.v [array]global.bmenucoord
pushi.e 0
cmp.i.v NEQ
bf [34]

:[33]
pushi.e -5
pushi.e 2
push.v [array]global.bmenucoord
pushi.e 3
cmp.i.v NEQ
b [35]

:[34]
push.e 0

:[35]
bf [37]

:[36]
pushi.e -5
pushi.e 2
dup.i 1
push.v [array]global.bmenucoord
pushi.e 1
sub.i.v
pop.i.v [array]global.bmenucoord
b [38]

:[37]
pushi.e -5
pushi.e 2
dup.i 1
push.v [array]global.bmenucoord
pushi.e 2
add.i.v
pop.i.v [array]global.bmenucoord

:[38]
pushi.e -5
pushi.e -5
pushi.e 2
push.v [array]global.bmenucoord
conv.v.i
push.v [array]global.choices
pushi.e 0
cmp.i.v EQ
bf [40]

:[39]
pushi.e -5
pushi.e 2
dup.i 1
push.v [array]global.bmenucoord
pushi.e 1
sub.i.v
pop.i.v [array]global.bmenucoord

:[40]
pushi.e -5
pushi.e -5
pushi.e 2
push.v [array]global.bmenucoord
conv.v.i
push.v [array]global.choices
pushi.e 0
cmp.i.v EQ
bf [42]

:[41]
pushi.e -5
pushi.e 2
dup.i 1
push.v [array]global.bmenucoord
pushi.e 1
sub.i.v
pop.i.v [array]global.bmenucoord

:[42]
pushi.e -5
pushi.e 0
push.v [array]global.choices
pushi.e 1
cmp.i.v EQ
bf [48]

:[43]
pushi.e -5
pushi.e 1
push.v [array]global.choices
pushi.e 0
cmp.i.v EQ
bf [48]

:[44]
pushi.e -5
pushi.e 2
push.v [array]global.choices
pushi.e 0
cmp.i.v EQ
bf [48]

:[45]
pushi.e -5
pushi.e 3
push.v [array]global.choices
pushi.e 0
cmp.i.v EQ
bf [48]

:[46]
pushi.e -5
pushi.e 4
push.v [array]global.choices
pushi.e 0
cmp.i.v EQ
bf [48]

:[47]
pushi.e -5
pushi.e 5
push.v [array]global.choices
pushi.e 0
cmp.i.v EQ
b [49]

:[48]
push.e 0

:[49]
bf [51]

:[50]
pushi.e 0
pushi.e -5
pushi.e 2
pop.v.i [array]global.bmenucoord

:[51]
pushi.e -5
pushi.e 2
push.v [array]global.bmenucoord
pushloc.v local.oldcoord
cmp.v.v NEQ
bf [53]

:[52]
pushi.e 115
conv.i.v
call.i snd_play(argc=1)
popz.v

:[53]
pushglb.v global.bmenuno
pushi.e 3
cmp.i.v GTE
bf [55]

:[54]
pushglb.v global.bmenuno
pushi.e 4
cmp.i.v LT
b [56]

:[55]
push.e 0

:[56]
bf [81]

:[57]
pushi.e -5
pushi.e 3
push.v [array]global.bmenucoord
pushglb.v global.bmenuno
pushi.e 3
sub.i.v
pushi.e 8
mul.i.v
add.v.v
pop.v.v local.tempcheck
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [64]

:[58]
pushloc.v local.tempcheck
pushi.e 0
cmp.i.v GT
bf [63]

:[59]
pushi.e -5
pushi.e 3
push.v [array]global.bmenucoord
pushi.e 0
cmp.i.v GT
bf [61]

:[60]
pushi.e -5
pushi.e 3
dup.i 1
push.v [array]global.bmenucoord
pushi.e 1
sub.i.v
pop.i.v [array]global.bmenucoord
b [62]

:[61]
push.v global.bmenuno
push.d 0.125
sub.d.v
pop.v.v global.bmenuno

:[62]
pushi.e 115
conv.i.v
call.i snd_play(argc=1)
popz.v

:[63]
b [81]

:[64]
pushi.e 0
pop.v.i local.mv
pushi.e -5
pushi.e 3
push.v [array]global.bmenucoord
pop.v.v local.tempcheck
pushglb.v global.bmenuno
push.d 3.5
cmp.d.v EQ
bf [66]

:[65]
push.v local.tempcheck
pushi.e 4
add.i.v
pop.v.v local.tempcheck

:[66]
pushi.e -5
pushi.e 3
push.v [array]global.bmenucoord
pushi.e 2
cmp.i.v EQ
bt [68]

:[67]
pushi.e -5
pushi.e 3
push.v [array]global.bmenucoord
pushi.e 3
cmp.i.v EQ
b [69]

:[68]
push.e 1

:[69]
bf [71]

:[70]
pushi.e -5
pushi.e 3
dup.i 1
push.v [array]global.bmenucoord
pushi.e 2
sub.i.v
pop.i.v [array]global.bmenucoord
pushi.e 1
pop.v.i local.mv

:[71]
pushloc.v local.mv
pushi.e 0
cmp.i.v EQ
bf [79]

:[72]
pushi.e -5
pushi.e 3
push.v [array]global.bmenucoord
pushi.e 0
cmp.i.v EQ
bt [74]

:[73]
pushi.e -5
pushi.e 3
push.v [array]global.bmenucoord
pushi.e 1
cmp.i.v EQ
b [75]

:[74]
push.e 1

:[75]
bf [79]

:[76]
pushi.e -5
pushi.e 3
dup.i 1
push.v [array]global.bmenucoord
pushi.e 2
add.i.v
pop.i.v [array]global.bmenucoord
pushi.e -5
pushloc.v local.tempcheck
pushi.e 2
add.i.v
conv.v.i
push.v [array]global.item
pushi.e 0
cmp.i.v EQ
bf [78]

:[77]
pushi.e -5
pushi.e 3
dup.i 1
push.v [array]global.bmenucoord
pushi.e 2
sub.i.v
pop.i.v [array]global.bmenucoord

:[78]
pushi.e 1
pop.v.i local.mv

:[79]
pushloc.v local.mv
pushi.e 0
cmp.i.v NEQ
bf [81]

:[80]
pushi.e 115
conv.i.v
call.i snd_play(argc=1)
popz.v

:[81]
pushglb.v global.bmenuno
pushi.e 4
cmp.i.v EQ
bf [end]

:[82]
pushi.e -5
pushi.e 4
push.v [array]global.bmenucoord
pop.v.v local.oldcoord
pushi.e -5
pushi.e 4
push.v [array]global.bmenucoord
pushi.e 0
cmp.i.v EQ
bf [84]

:[83]
pushglb.v global.mercy
pushi.e 1
cmp.i.v LT
b [85]

:[84]
push.e 0

:[85]
bf [87]

:[86]
pushi.e 1
pushi.e -5
pushi.e 4
pop.v.i [array]global.bmenucoord
b [88]

:[87]
pushi.e 0
pushi.e -5
pushi.e 4
pop.v.i [array]global.bmenucoord

:[88]
pushi.e -5
pushi.e 4
push.v [array]global.bmenucoord
pushloc.v local.oldcoord
cmp.v.v NEQ
bf [end]

:[89]
pushi.e 115
conv.i.v
call.i snd_play(argc=1)
popz.v

:[end]