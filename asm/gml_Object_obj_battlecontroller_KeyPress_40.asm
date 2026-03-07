.localvar 0 arguments
.localvar 1 oldcoord 1665
.localvar 2 tempcheck 1666
.localvar 3 mv 1667

:[0]
pushglb.v global.mnfight
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushglb.v global.bmenuno
pushi.e 1
cmp.i.v EQ
bt [4]

:[2]
pushglb.v global.bmenuno
pushi.e 2
cmp.i.v EQ
bt [4]

:[3]
pushglb.v global.bmenuno
pushi.e 11
cmp.i.v EQ
b [5]

:[4]
push.e 1

:[5]
bf [30]

:[6]
pushi.e -5
pushi.e 1
push.v [array]global.bmenucoord
pop.v.v local.oldcoord
pushi.e -5
pushi.e 1
dup.i 1
push.v [array]global.bmenucoord
pushi.e 1
add.i.v
pop.i.v [array]global.bmenucoord
pushi.e -5
pushi.e 1
push.v [array]global.bmenucoord
pushi.e 2
cmp.i.v GT
bf [8]

:[7]
pushi.e 0
pushi.e -5
pushi.e 1
pop.v.i [array]global.bmenucoord

:[8]
pushi.e -5
pushi.e 0
push.v [array]global.monster
pushi.e 0
cmp.i.v EQ
bf [10]

:[9]
pushi.e -5
pushi.e 2
push.v [array]global.monster
pushi.e 0
cmp.i.v EQ
b [11]

:[10]
push.e 0

:[11]
bf [13]

:[12]
pushi.e 1
pushi.e -5
pushi.e 1
pop.v.i [array]global.bmenucoord

:[13]
pushi.e -5
pushi.e 1
push.v [array]global.bmenucoord
pushi.e 0
cmp.i.v EQ
bf [15]

:[14]
pushi.e -5
pushi.e 0
push.v [array]global.monster
pushi.e 0
cmp.i.v EQ
b [16]

:[15]
push.e 0

:[16]
bf [18]

:[17]
pushi.e 1
pushi.e -5
pushi.e 1
pop.v.i [array]global.bmenucoord

:[18]
pushi.e -5
pushi.e 1
push.v [array]global.bmenucoord
pushi.e 1
cmp.i.v EQ
bf [20]

:[19]
pushi.e -5
pushi.e 1
push.v [array]global.monster
pushi.e 0
cmp.i.v EQ
b [21]

:[20]
push.e 0

:[21]
bf [23]

:[22]
pushi.e 2
pushi.e -5
pushi.e 1
pop.v.i [array]global.bmenucoord

:[23]
pushi.e -5
pushi.e 1
push.v [array]global.bmenucoord
pushi.e 2
cmp.i.v EQ
bf [25]

:[24]
pushi.e -5
pushi.e 2
push.v [array]global.monster
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
pushi.e 1
pop.v.i [array]global.bmenucoord

:[28]
pushi.e -5
pushi.e 1
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
pushi.e 10
cmp.i.v EQ
bf [58]

:[31]
pushi.e -5
pushi.e 2
push.v [array]global.bmenucoord
pop.v.v local.oldcoord
pushi.e -5
pushi.e 2
push.v [array]global.bmenucoord
pushi.e 2
cmp.i.v NEQ
bf [33]

:[32]
pushi.e -5
pushi.e 2
push.v [array]global.bmenucoord
pushi.e 5
cmp.i.v NEQ
b [34]

:[33]
push.e 0

:[34]
bf [36]

:[35]
pushi.e -5
pushi.e 2
dup.i 1
push.v [array]global.bmenucoord
pushi.e 1
add.i.v
pop.i.v [array]global.bmenucoord
b [37]

:[36]
pushi.e -5
pushi.e 2
dup.i 1
push.v [array]global.bmenucoord
pushi.e 2
sub.i.v
pop.i.v [array]global.bmenucoord

:[37]
pushi.e -5
pushi.e -5
pushi.e 2
push.v [array]global.bmenucoord
conv.v.i
push.v [array]global.choices
pushi.e 0
cmp.i.v EQ
bf [39]

:[38]
pushi.e -5
pushi.e 2
push.v [array]global.bmenucoord
pushi.e 2
cmp.i.v GT
b [40]

:[39]
push.e 0

:[40]
bf [42]

:[41]
pushi.e 3
pushi.e -5
pushi.e 2
pop.v.i [array]global.bmenucoord

:[42]
pushi.e -5
pushi.e -5
pushi.e 2
push.v [array]global.bmenucoord
conv.v.i
push.v [array]global.choices
pushi.e 0
cmp.i.v EQ
bf [44]

:[43]
pushi.e -5
pushi.e 2
push.v [array]global.bmenucoord
pushi.e 2
cmp.i.v LTE
b [45]

:[44]
push.e 0

:[45]
bf [47]

:[46]
pushi.e 0
pushi.e -5
pushi.e 2
pop.v.i [array]global.bmenucoord

:[47]
pushi.e -5
pushi.e 0
push.v [array]global.choices
pushi.e 1
cmp.i.v EQ
bf [53]

:[48]
pushi.e -5
pushi.e 1
push.v [array]global.choices
pushi.e 0
cmp.i.v EQ
bf [53]

:[49]
pushi.e -5
pushi.e 2
push.v [array]global.choices
pushi.e 0
cmp.i.v EQ
bf [53]

:[50]
pushi.e -5
pushi.e 3
push.v [array]global.choices
pushi.e 0
cmp.i.v EQ
bf [53]

:[51]
pushi.e -5
pushi.e 4
push.v [array]global.choices
pushi.e 0
cmp.i.v EQ
bf [53]

:[52]
pushi.e -5
pushi.e 5
push.v [array]global.choices
pushi.e 0
cmp.i.v EQ
b [54]

:[53]
push.e 0

:[54]
bf [56]

:[55]
pushi.e 0
pushi.e -5
pushi.e 2
pop.v.i [array]global.bmenucoord

:[56]
pushi.e -5
pushi.e 2
push.v [array]global.bmenucoord
pushloc.v local.oldcoord
cmp.v.v NEQ
bf [58]

:[57]
pushi.e 115
conv.i.v
call.i snd_play(argc=1)
popz.v

:[58]
pushglb.v global.bmenuno
pushi.e 3
cmp.i.v GTE
bf [60]

:[59]
pushglb.v global.bmenuno
pushi.e 4
cmp.i.v LT
b [61]

:[60]
push.e 0

:[61]
bf [87]

:[62]
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
bf [72]

:[63]
pushloc.v local.tempcheck
pushi.e 7
cmp.i.v LT
bf [65]

:[64]
pushi.e -5
pushloc.v local.tempcheck
pushi.e 1
add.i.v
conv.v.i
push.v [array]global.item
pushi.e 0
cmp.i.v NEQ
b [66]

:[65]
push.e 0

:[66]
bf [71]

:[67]
pushi.e -5
pushi.e 3
push.v [array]global.bmenucoord
pushi.e 2
cmp.i.v LT
bf [69]

:[68]
pushi.e -5
pushi.e 3
dup.i 1
push.v [array]global.bmenucoord
pushi.e 1
add.i.v
pop.i.v [array]global.bmenucoord
b [70]

:[69]
push.v global.bmenuno
push.d 0.125
add.d.v
pop.v.v global.bmenuno

:[70]
pushi.e 115
conv.i.v
call.i snd_play(argc=1)
popz.v

:[71]
b [87]

:[72]
pushi.e 0
pop.v.i local.mv
pushi.e -5
pushi.e 3
push.v [array]global.bmenucoord
pushi.e 2
cmp.i.v EQ
bt [74]

:[73]
pushi.e -5
pushi.e 3
push.v [array]global.bmenucoord
pushi.e 3
cmp.i.v EQ
b [75]

:[74]
push.e 1

:[75]
bf [77]

:[76]
pushi.e -5
pushi.e 3
dup.i 1
push.v [array]global.bmenucoord
pushi.e 2
sub.i.v
pop.i.v [array]global.bmenucoord
pushi.e 1
pop.v.i local.mv

:[77]
pushloc.v local.mv
pushi.e 0
cmp.i.v EQ
bf [85]

:[78]
pushi.e -5
pushi.e 3
push.v [array]global.bmenucoord
pushi.e 0
cmp.i.v EQ
bt [80]

:[79]
pushi.e -5
pushi.e 3
push.v [array]global.bmenucoord
pushi.e 1
cmp.i.v EQ
b [81]

:[80]
push.e 1

:[81]
bf [85]

:[82]
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
bf [84]

:[83]
pushi.e -5
pushi.e 3
dup.i 1
push.v [array]global.bmenucoord
pushi.e 2
sub.i.v
pop.i.v [array]global.bmenucoord

:[84]
pushi.e 1
pop.v.i local.mv

:[85]
pushloc.v local.mv
pushi.e 0
cmp.i.v NEQ
bf [87]

:[86]
pushi.e 115
conv.i.v
call.i snd_play(argc=1)
popz.v

:[87]
pushglb.v global.bmenuno
pushi.e 4
cmp.i.v EQ
bf [end]

:[88]
pushi.e -5
pushi.e 4
push.v [array]global.bmenucoord
pop.v.v local.oldcoord
pushi.e -5
pushi.e 4
push.v [array]global.bmenucoord
pushi.e 0
cmp.i.v EQ
bf [90]

:[89]
pushglb.v global.mercy
pushi.e 1
cmp.i.v LT
b [91]

:[90]
push.e 0

:[91]
bf [93]

:[92]
pushi.e 1
pushi.e -5
pushi.e 4
pop.v.i [array]global.bmenucoord
b [94]

:[93]
pushi.e 0
pushi.e -5
pushi.e 4
pop.v.i [array]global.bmenucoord

:[94]
pushi.e -5
pushi.e 4
push.v [array]global.bmenucoord
pushloc.v local.oldcoord
cmp.v.v NEQ
bf [end]

:[95]
pushi.e 115
conv.i.v
call.i snd_play(argc=1)
popz.v

:[end]