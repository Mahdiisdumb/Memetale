.localvar 0 arguments
.localvar 1 oldcoord 1677
.localvar 2 mv 1678
.localvar 3 tempcheck 1679

:[0]
pushi.e 39
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
pushi.e 0
cmp.i.v EQ
bf [14]

:[3]
pushi.e -5
pushi.e 0
push.v [array]global.bmenucoord
pop.v.v local.oldcoord
pushi.e -5
pushi.e 0
dup.i 1
push.v [array]global.bmenucoord
pushi.e 1
sub.i.v
pop.i.v [array]global.bmenucoord
pushi.e -5
pushi.e 0
push.v [array]global.bmenucoord
pushi.e 0
cmp.i.v LT
bf [5]

:[4]
pushi.e 3
pushi.e -5
pushi.e 0
pop.v.i [array]global.bmenucoord

:[5]
pushglb.v global.mercy
pushi.e 2
cmp.i.v EQ
bf [7]

:[6]
pushi.e -5
pushi.e 0
push.v [array]global.bmenucoord
pushi.e 3
cmp.i.v EQ
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
pushi.e 2
pushi.e -5
pushi.e 0
pop.v.i [array]global.bmenucoord

:[10]
pushglb.v global.mercy
pushi.e 3
cmp.i.v EQ
bf [12]

:[11]
pushi.e 1
pushi.e -5
pushi.e 0
pop.v.i [array]global.bmenucoord

:[12]
pushi.e -5
pushi.e 0
push.v [array]global.bmenucoord
pushloc.v local.oldcoord
cmp.v.v NEQ
bf [14]

:[13]
pushi.e 115
conv.i.v
call.i snd_play(argc=1)
popz.v

:[14]
pushglb.v global.myfight
pushi.e 4
cmp.i.v NEQ
bf [60]

:[15]
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [17]

:[16]
b [60]

:[17]
pushi.e 0
pop.v.i local.mv
pushglb.v global.bmenuno
pushi.e 3
cmp.i.v EQ
bf [43]

:[18]
pushglb.v global.bmenuno
pop.v.v local.tempcheck
pushi.e -5
pushi.e 3
push.v [array]global.bmenucoord
pushi.e 1
cmp.i.v EQ
bf [20]

:[19]
pushi.e 0
pushi.e -5
pushi.e 3
pop.v.i [array]global.bmenucoord
pushi.e 1
pop.v.i local.mv

:[20]
pushloc.v local.mv
pushi.e 0
cmp.i.v EQ
bf [28]

:[21]
pushi.e -5
pushi.e 3
push.v [array]global.bmenucoord
pushi.e 0
cmp.i.v EQ
bf [28]

:[22]
pushi.e -5
pushi.e 5
push.v [array]global.item
pushi.e 0
cmp.i.v NEQ
bf [24]

:[23]
pushi.e 1
pushi.e -5
pushi.e 3
pop.v.i [array]global.bmenucoord
push.d 3.5
pop.v.d global.bmenuno
pushi.e 1
pop.v.i local.mv
b [28]

:[24]
pushi.e -5
pushi.e 4
push.v [array]global.item
pushi.e 0
cmp.i.v NEQ
bf [26]

:[25]
pushi.e 0
pushi.e -5
pushi.e 3
pop.v.i [array]global.bmenucoord
push.d 3.5
pop.v.d global.bmenuno
pushi.e 1
pop.v.i local.mv
b [28]

:[26]
pushi.e -5
pushi.e 1
push.v [array]global.item
pushi.e 0
cmp.i.v NEQ
bf [28]

:[27]
pushi.e 1
pushi.e -5
pushi.e 3
pop.v.i [array]global.bmenucoord
pushi.e 1
pop.v.i local.mv

:[28]
pushloc.v local.mv
pushi.e 0
cmp.i.v EQ
bf [31]

:[29]
pushi.e -5
pushi.e 3
push.v [array]global.bmenucoord
pushi.e 3
cmp.i.v EQ
bf [31]

:[30]
pushi.e 2
pushi.e -5
pushi.e 3
pop.v.i [array]global.bmenucoord
pushi.e 1
pop.v.i local.mv

:[31]
pushloc.v local.mv
pushi.e 0
cmp.i.v EQ
bf [39]

:[32]
pushi.e -5
pushi.e 3
push.v [array]global.bmenucoord
pushi.e 2
cmp.i.v EQ
bf [39]

:[33]
pushi.e -5
pushi.e 7
push.v [array]global.item
pushi.e 0
cmp.i.v NEQ
bf [35]

:[34]
pushi.e 3
pushi.e -5
pushi.e 3
pop.v.i [array]global.bmenucoord
push.d 3.5
pop.v.d global.bmenuno
pushi.e 1
pop.v.i local.mv
b [39]

:[35]
pushi.e -5
pushi.e 6
push.v [array]global.item
pushi.e 0
cmp.i.v NEQ
bf [37]

:[36]
pushi.e 2
pushi.e -5
pushi.e 3
pop.v.i [array]global.bmenucoord
push.d 3.5
pop.v.d global.bmenuno
pushi.e 1
pop.v.i local.mv
b [39]

:[37]
pushi.e -5
pushi.e 3
push.v [array]global.item
pushi.e 0
cmp.i.v NEQ
bf [39]

:[38]
pushi.e 3
pushi.e -5
pushi.e 3
pop.v.i [array]global.bmenucoord
pushi.e 1
pop.v.i local.mv

:[39]
pushloc.v local.mv
pushi.e 0
cmp.i.v NEQ
bf [41]

:[40]
pushi.e 115
conv.i.v
call.i snd_play(argc=1)
popz.v

:[41]
pushglb.v global.bmenuno
pushloc.v local.tempcheck
cmp.v.v NEQ
bf [43]

:[42]
pushi.e 73
conv.i.v
call.i script_execute(argc=1)
popz.v

:[43]
pushloc.v local.mv
pushi.e 0
cmp.i.v EQ
bf [60]

:[44]
pushglb.v global.bmenuno
push.d 3.5
cmp.d.v EQ
bf [60]

:[45]
pushglb.v global.bmenuno
pop.v.v local.tempcheck
pushi.e -5
pushi.e 3
push.v [array]global.bmenucoord
pushi.e 1
cmp.i.v EQ
bf [47]

:[46]
pushi.e 0
pushi.e -5
pushi.e 3
pop.v.i [array]global.bmenucoord
pushi.e 1
pop.v.i local.mv

:[47]
pushloc.v local.mv
pushi.e 0
cmp.i.v EQ
bf [50]

:[48]
pushi.e -5
pushi.e 3
push.v [array]global.bmenucoord
pushi.e 0
cmp.i.v EQ
bf [50]

:[49]
pushi.e 1
pop.v.i local.mv
pushi.e 3
pop.v.i global.bmenuno
pushi.e 1
pushi.e -5
pushi.e 3
pop.v.i [array]global.bmenucoord

:[50]
pushloc.v local.mv
pushi.e 0
cmp.i.v EQ
bf [53]

:[51]
pushi.e -5
pushi.e 3
push.v [array]global.bmenucoord
pushi.e 3
cmp.i.v EQ
bf [53]

:[52]
pushi.e 2
pushi.e -5
pushi.e 3
pop.v.i [array]global.bmenucoord
pushi.e 1
pop.v.i local.mv

:[53]
pushloc.v local.mv
pushi.e 0
cmp.i.v EQ
bf [56]

:[54]
pushi.e -5
pushi.e 3
push.v [array]global.bmenucoord
pushi.e 2
cmp.i.v EQ
bf [56]

:[55]
pushi.e 1
pop.v.i local.mv
pushi.e 3
pop.v.i global.bmenuno
pushi.e 3
pushi.e -5
pushi.e 3
pop.v.i [array]global.bmenucoord

:[56]
pushloc.v local.mv
pushi.e 1
cmp.i.v EQ
bf [58]

:[57]
pushi.e 115
conv.i.v
call.i snd_play(argc=1)
popz.v

:[58]
pushglb.v global.bmenuno
pushloc.v local.tempcheck
cmp.v.v NEQ
bf [60]

:[59]
pushi.e 73
conv.i.v
call.i script_execute(argc=1)
popz.v

:[60]
pushglb.v global.bmenuno
pushi.e 10
cmp.i.v EQ
bf [77]

:[61]
pushi.e -5
pushi.e 2
push.v [array]global.bmenucoord
pop.v.v local.oldcoord
pushi.e -5
pushi.e 2
push.v [array]global.bmenucoord
pushi.e 2
cmp.i.v LTE
bf [63]

:[62]
pushi.e -5
pushi.e 2
dup.i 1
push.v [array]global.bmenucoord
pushi.e 3
add.i.v
pop.i.v [array]global.bmenucoord
b [64]

:[63]
pushi.e -5
pushi.e 2
dup.i 1
push.v [array]global.bmenucoord
pushi.e 3
sub.i.v
pop.i.v [array]global.bmenucoord

:[64]
pushi.e -5
pushi.e -5
pushi.e 2
push.v [array]global.bmenucoord
conv.v.i
push.v [array]global.choices
pushi.e 0
cmp.i.v EQ
bf [66]

:[65]
pushi.e -5
pushi.e 2
dup.i 1
push.v [array]global.bmenucoord
pushi.e 1
sub.i.v
pop.i.v [array]global.bmenucoord

:[66]
pushi.e -5
pushi.e 0
push.v [array]global.choices
pushi.e 1
cmp.i.v EQ
bf [72]

:[67]
pushi.e -5
pushi.e 1
push.v [array]global.choices
pushi.e 0
cmp.i.v EQ
bf [72]

:[68]
pushi.e -5
pushi.e 2
push.v [array]global.choices
pushi.e 0
cmp.i.v EQ
bf [72]

:[69]
pushi.e -5
pushi.e 3
push.v [array]global.choices
pushi.e 0
cmp.i.v EQ
bf [72]

:[70]
pushi.e -5
pushi.e 4
push.v [array]global.choices
pushi.e 0
cmp.i.v EQ
bf [72]

:[71]
pushi.e -5
pushi.e 5
push.v [array]global.choices
pushi.e 0
cmp.i.v EQ
b [73]

:[72]
push.e 0

:[73]
bf [75]

:[74]
pushi.e 0
pushi.e -5
pushi.e 2
pop.v.i [array]global.bmenucoord

:[75]
pushi.e -5
pushi.e 2
push.v [array]global.bmenucoord
pushloc.v local.oldcoord
cmp.v.v NEQ
bf [77]

:[76]
pushi.e 115
conv.i.v
call.i snd_play(argc=1)
popz.v

:[77]
pushglb.v global.bmenuno
pushi.e 6
cmp.i.v EQ
bf [end]

:[78]
pushi.e -5
pushi.e 6
push.v [array]global.bmenucoord
pushi.e 0
cmp.i.v EQ
bf [80]

:[79]
pushi.e -5
pushi.e 6
dup.i 1
push.v [array]global.bmenucoord
pushi.e 1
add.i.v
pop.i.v [array]global.bmenucoord
b [81]

:[80]
pushi.e -5
pushi.e 6
dup.i 1
push.v [array]global.bmenucoord
pushi.e 1
sub.i.v
pop.i.v [array]global.bmenucoord

:[81]
pushi.e 115
conv.i.v
call.i snd_play(argc=1)
popz.v

:[end]