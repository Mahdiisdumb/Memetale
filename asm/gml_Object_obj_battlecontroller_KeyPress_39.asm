.localvar 0 arguments
.localvar 1 oldcoord 1669
.localvar 2 mv 1670
.localvar 3 tempcheck 1671

:[0]
pushglb.v global.mnfight
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushglb.v global.bmenuno
pushi.e 0
cmp.i.v EQ
bf [13]

:[2]
pushi.e -5
pushi.e 0
push.v [array]global.bmenucoord
pop.v.v local.oldcoord
pushi.e -5
pushi.e 0
dup.i 1
push.v [array]global.bmenucoord
pushi.e 1
add.i.v
pop.i.v [array]global.bmenucoord
pushi.e -5
pushi.e 0
push.v [array]global.bmenucoord
pushi.e 3
cmp.i.v GT
bf [4]

:[3]
pushi.e 0
pushi.e -5
pushi.e 0
pop.v.i [array]global.bmenucoord

:[4]
pushglb.v global.mercy
pushi.e 2
cmp.i.v EQ
bf [6]

:[5]
pushi.e -5
pushi.e 0
push.v [array]global.bmenucoord
pushi.e 3
cmp.i.v EQ
b [7]

:[6]
push.e 0

:[7]
bf [9]

:[8]
pushi.e 0
pushi.e -5
pushi.e 0
pop.v.i [array]global.bmenucoord

:[9]
pushglb.v global.mercy
pushi.e 3
cmp.i.v EQ
bf [11]

:[10]
pushi.e 1
pushi.e -5
pushi.e 0
pop.v.i [array]global.bmenucoord

:[11]
pushi.e -5
pushi.e 0
push.v [array]global.bmenucoord
pushloc.v local.oldcoord
cmp.v.v NEQ
bf [13]

:[12]
pushi.e 115
conv.i.v
call.i snd_play(argc=1)
popz.v

:[13]
pushglb.v global.bmenuno
pushi.e 10
cmp.i.v EQ
bf [30]

:[14]
pushi.e -5
pushi.e 2
push.v [array]global.bmenucoord
pop.v.v local.oldcoord
pushi.e -5
pushi.e 2
push.v [array]global.bmenucoord
pushi.e 2
cmp.i.v LTE
bf [16]

:[15]
pushi.e -5
pushi.e 2
dup.i 1
push.v [array]global.bmenucoord
pushi.e 3
add.i.v
pop.i.v [array]global.bmenucoord
b [17]

:[16]
pushi.e -5
pushi.e 2
dup.i 1
push.v [array]global.bmenucoord
pushi.e 3
sub.i.v
pop.i.v [array]global.bmenucoord

:[17]
pushi.e -5
pushi.e -5
pushi.e 2
push.v [array]global.bmenucoord
conv.v.i
push.v [array]global.choices
pushi.e 0
cmp.i.v EQ
bf [19]

:[18]
pushi.e -5
pushi.e 2
dup.i 1
push.v [array]global.bmenucoord
pushi.e 1
sub.i.v
pop.i.v [array]global.bmenucoord

:[19]
pushi.e -5
pushi.e 0
push.v [array]global.choices
pushi.e 1
cmp.i.v EQ
bf [25]

:[20]
pushi.e -5
pushi.e 1
push.v [array]global.choices
pushi.e 0
cmp.i.v EQ
bf [25]

:[21]
pushi.e -5
pushi.e 2
push.v [array]global.choices
pushi.e 0
cmp.i.v EQ
bf [25]

:[22]
pushi.e -5
pushi.e 3
push.v [array]global.choices
pushi.e 0
cmp.i.v EQ
bf [25]

:[23]
pushi.e -5
pushi.e 4
push.v [array]global.choices
pushi.e 0
cmp.i.v EQ
bf [25]

:[24]
pushi.e -5
pushi.e 5
push.v [array]global.choices
pushi.e 0
cmp.i.v EQ
b [26]

:[25]
push.e 0

:[26]
bf [28]

:[27]
pushi.e 0
pushi.e -5
pushi.e 2
pop.v.i [array]global.bmenucoord

:[28]
pushi.e -5
pushi.e 2
push.v [array]global.bmenucoord
pushloc.v local.oldcoord
cmp.v.v NEQ
bf [30]

:[29]
pushi.e 115
conv.i.v
call.i snd_play(argc=1)
popz.v

:[30]
pushglb.v global.bmenuno
pushi.e 6
cmp.i.v EQ
bf [35]

:[31]
pushi.e -5
pushi.e 6
push.v [array]global.bmenucoord
pushi.e 0
cmp.i.v EQ
bf [33]

:[32]
pushi.e -5
pushi.e 6
dup.i 1
push.v [array]global.bmenucoord
pushi.e 1
add.i.v
pop.i.v [array]global.bmenucoord
b [34]

:[33]
pushi.e -5
pushi.e 6
dup.i 1
push.v [array]global.bmenucoord
pushi.e 1
sub.i.v
pop.i.v [array]global.bmenucoord

:[34]
pushi.e 115
conv.i.v
call.i snd_play(argc=1)
popz.v

:[35]
pushglb.v global.myfight
pushi.e 4
cmp.i.v NEQ
bf [end]

:[36]
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [38]

:[37]
b [end]

:[38]
pushi.e 0
pop.v.i local.mv
pushglb.v global.bmenuno
pushi.e 3
cmp.i.v EQ
bf [63]

:[39]
pushglb.v global.bmenuno
pop.v.v local.tempcheck
pushi.e -5
pushi.e 3
push.v [array]global.bmenucoord
pushi.e 0
cmp.i.v EQ
bf [43]

:[40]
pushi.e -5
pushi.e 1
push.v [array]global.item
pushi.e 0
cmp.i.v NEQ
bf [42]

:[41]
pushi.e 1
pushi.e -5
pushi.e 3
pop.v.i [array]global.bmenucoord

:[42]
pushi.e 1
pop.v.i local.mv

:[43]
pushloc.v local.mv
pushi.e 0
cmp.i.v EQ
bf [49]

:[44]
pushi.e -5
pushi.e 3
push.v [array]global.bmenucoord
pushi.e 1
cmp.i.v EQ
bf [49]

:[45]
pushi.e -5
pushi.e 4
push.v [array]global.item
pushi.e 0
cmp.i.v NEQ
bf [47]

:[46]
pushi.e 0
pushi.e -5
pushi.e 3
pop.v.i [array]global.bmenucoord
push.d 3.5
pop.v.d global.bmenuno
b [48]

:[47]
pushi.e 0
pushi.e -5
pushi.e 3
pop.v.i [array]global.bmenucoord

:[48]
pushi.e 1
pop.v.i local.mv

:[49]
pushi.e -5
pushi.e 3
push.v [array]global.bmenucoord
pushi.e 2
cmp.i.v EQ
bf [53]

:[50]
pushi.e -5
pushi.e 3
push.v [array]global.item
pushi.e 0
cmp.i.v NEQ
bf [52]

:[51]
pushi.e 3
pushi.e -5
pushi.e 3
pop.v.i [array]global.bmenucoord

:[52]
pushi.e 1
pop.v.i local.mv

:[53]
pushloc.v local.mv
pushi.e 0
cmp.i.v EQ
bf [59]

:[54]
pushi.e -5
pushi.e 3
push.v [array]global.bmenucoord
pushi.e 3
cmp.i.v EQ
bf [59]

:[55]
pushi.e -5
pushi.e 6
push.v [array]global.item
pushi.e 0
cmp.i.v NEQ
bf [57]

:[56]
pushi.e 2
pushi.e -5
pushi.e 3
pop.v.i [array]global.bmenucoord
push.d 3.5
pop.v.d global.bmenuno
b [58]

:[57]
pushi.e 2
pushi.e -5
pushi.e 3
pop.v.i [array]global.bmenucoord

:[58]
pushi.e 1
pop.v.i local.mv

:[59]
pushloc.v local.mv
pushi.e 1
cmp.i.v EQ
bf [61]

:[60]
pushi.e 115
conv.i.v
call.i snd_play(argc=1)
popz.v

:[61]
pushglb.v global.bmenuno
pushloc.v local.tempcheck
cmp.v.v NEQ
bf [63]

:[62]
pushi.e 73
conv.i.v
call.i script_execute(argc=1)
popz.v

:[63]
pushloc.v local.mv
pushi.e 0
cmp.i.v EQ
bf [65]

:[64]
pushglb.v global.bmenuno
push.d 3.5
cmp.d.v EQ
b [66]

:[65]
push.e 0

:[66]
bf [end]

:[67]
pushglb.v global.bmenuno
pop.v.v local.tempcheck
pushi.e -5
pushi.e 3
push.v [array]global.bmenucoord
pushi.e 1
cmp.i.v EQ
bf [69]

:[68]
pushi.e 0
pushi.e -5
pushi.e 3
pop.v.i [array]global.bmenucoord
pushi.e 3
pop.v.i global.bmenuno
pushi.e 1
pop.v.i local.mv

:[69]
pushloc.v local.mv
pushi.e 0
cmp.i.v EQ
bf [75]

:[70]
pushi.e -5
pushi.e 3
push.v [array]global.bmenucoord
pushi.e 0
cmp.i.v EQ
bf [75]

:[71]
pushi.e -5
pushi.e 5
push.v [array]global.item
pushi.e 0
cmp.i.v NEQ
bf [73]

:[72]
pushi.e 1
pushi.e -5
pushi.e 3
pop.v.i [array]global.bmenucoord
b [74]

:[73]
pushi.e 0
pushi.e -5
pushi.e 3
pop.v.i [array]global.bmenucoord
pushi.e 3
pop.v.i global.bmenuno

:[74]
pushi.e 1
pop.v.i local.mv

:[75]
pushloc.v local.mv
pushi.e 0
cmp.i.v EQ
bf [78]

:[76]
pushi.e -5
pushi.e 3
push.v [array]global.bmenucoord
pushi.e 3
cmp.i.v EQ
bf [78]

:[77]
pushi.e 2
pushi.e -5
pushi.e 3
pop.v.i [array]global.bmenucoord
pushi.e 3
pop.v.i global.bmenuno
pushi.e 1
pop.v.i local.mv

:[78]
pushloc.v local.mv
pushi.e 0
cmp.i.v EQ
bf [84]

:[79]
pushi.e -5
pushi.e 3
push.v [array]global.bmenucoord
pushi.e 2
cmp.i.v EQ
bf [84]

:[80]
pushi.e -5
pushi.e 7
push.v [array]global.item
pushi.e 0
cmp.i.v NEQ
bf [82]

:[81]
pushi.e 3
pushi.e -5
pushi.e 3
pop.v.i [array]global.bmenucoord
b [83]

:[82]
pushi.e 2
pushi.e -5
pushi.e 3
pop.v.i [array]global.bmenucoord
pushi.e 3
pop.v.i global.bmenuno

:[83]
pushi.e 1
pop.v.i local.mv

:[84]
pushloc.v local.mv
pushi.e 1
cmp.i.v EQ
bf [86]

:[85]
pushi.e 115
conv.i.v
call.i snd_play(argc=1)
popz.v

:[86]
pushglb.v global.bmenuno
pushloc.v local.tempcheck
cmp.v.v NEQ
bf [end]

:[87]
pushi.e 73
conv.i.v
call.i script_execute(argc=1)
popz.v

:[end]