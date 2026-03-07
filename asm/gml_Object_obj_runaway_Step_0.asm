.localvar 0 arguments

:[0]
pushi.e 1576
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[1]
push.v self.movement
pushi.e 1
cmp.i.v EQ
bf [16]

:[2]
push.v 1576.x
push.v 1576.xprevious
cmp.v.v NEQ
bt [4]

:[3]
push.v 1576.y
push.v 1576.yprevious
cmp.v.v NEQ
b [5]

:[4]
push.e 1

:[5]
bf [16]

:[6]
pushi.e -1
pop.v.i self.shouldir
pushi.e 1576
conv.i.v
call.i distance_to_object(argc=1)
pop.v.v self.jim
push.v self.jim
pushi.e 80
cmp.i.v LT
bf [16]

:[7]
pushi.e 0
pop.v.i self.movement
pushi.e 15
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
push.v self.x
push.v 1576.x
sub.v.v
call.i abs(argc=1)
push.v self.y
push.v 1576.y
sub.v.v
call.i abs(argc=1)
cmp.v.v GTE
bf [12]

:[8]
pushi.e 0
pop.v.i self.vspeed
push.v self.x
push.v 1576.x
cmp.v.v GT
bf [10]

:[9]
pushi.e 4
pop.v.i self.hspeed
push.v self.x
pushi.e 4
add.i.v
pop.v.v self.x
pushi.e 0
pop.v.i self.shoulddir
b [11]

:[10]
pushi.e -4
pop.v.i self.hspeed
push.v self.x
pushi.e 4
sub.i.v
pop.v.v self.x
pushi.e 2
pop.v.i self.shoulddir

:[11]
pushi.e 0
pop.v.i self.hedge
b [16]

:[12]
pushi.e 0
pop.v.i self.hspeed
push.v self.y
push.v 1576.y
cmp.v.v GT
bf [14]

:[13]
pushi.e 4
pop.v.i self.vspeed
push.v self.y
pushi.e 4
add.i.v
pop.v.v self.y
pushi.e 3
pop.v.i self.shoulddir
b [15]

:[14]
pushi.e -4
pop.v.i self.vspeed
push.v self.y
pushi.e 4
sub.i.v
pop.v.v self.y
pushi.e 1
pop.v.i self.shoulddir

:[15]
pushi.e 0
pop.v.i self.vedge

:[16]
push.v self.y
push.v self.u
cmp.v.v LT
bf [18]

:[17]
push.v self.vspeed
pushi.e 0
cmp.i.v LT
b [19]

:[18]
push.e 0

:[19]
bf [21]

:[20]
pushi.e 0
pop.v.i self.vspeed
pushi.e 1
pop.v.i self.vedge
push.v self.u
pop.v.v self.y

:[21]
push.v self.y
push.v self.d
cmp.v.v GT
bf [23]

:[22]
push.v self.vspeed
pushi.e 0
cmp.i.v GT
b [24]

:[23]
push.e 0

:[24]
bf [26]

:[25]
pushi.e 0
pop.v.i self.vspeed
pushi.e 2
pop.v.i self.vedge
push.v self.d
pop.v.v self.y

:[26]
push.v self.x
push.v self.r
cmp.v.v GT
bf [28]

:[27]
push.v self.hspeed
pushi.e 0
cmp.i.v GT
b [29]

:[28]
push.e 0

:[29]
bf [31]

:[30]
pushi.e 0
pop.v.i self.hspeed
pushi.e 2
pop.v.i self.hedge
push.v self.r
pop.v.v self.x

:[31]
push.v self.x
push.v self.l
cmp.v.v LT
bf [33]

:[32]
push.v self.hspeed
pushi.e 0
cmp.i.v LT
b [34]

:[33]
push.e 0

:[34]
bf [36]

:[35]
pushi.e 0
pop.v.i self.hspeed
pushi.e 1
pop.v.i self.hedge
push.v self.l
pop.v.v self.x

:[36]
push.v self.vedge
pushi.e 0
cmp.i.v GT
bt [38]

:[37]
push.v self.hedge
pushi.e 0
cmp.i.v GT
b [39]

:[38]
push.e 1

:[39]
bf [92]

:[40]
push.v self.xmovement
pushi.e 1
cmp.i.v EQ
bf [92]

:[41]
push.v 1576.x
push.v 1576.xprevious
cmp.v.v NEQ
bt [43]

:[42]
push.v 1576.y
push.v 1576.yprevious
cmp.v.v NEQ
b [44]

:[43]
push.e 1

:[44]
bf [92]

:[45]
pushi.e 0
pop.v.i self.vspeed
pushi.e 0
pop.v.i self.hspeed
push.v self.vedge
pushi.e 1
cmp.i.v EQ
bf [47]

:[46]
push.v self.hedge
pushi.e 1
cmp.i.v EQ
b [48]

:[47]
push.e 0

:[48]
bf [54]

:[49]
push.v self.shoulddir
pushi.e 2
cmp.i.v EQ
bf [51]

:[50]
pushi.e 4
pop.v.i self.vspeed

:[51]
push.v self.shoulddir
pushi.e 1
cmp.i.v EQ
bf [53]

:[52]
pushi.e 4
pop.v.i self.hspeed

:[53]
pushi.e 0
pop.v.i self.hedge
pushi.e 0
pop.v.i self.vedge

:[54]
push.v self.vedge
pushi.e 2
cmp.i.v EQ
bf [56]

:[55]
push.v self.hedge
pushi.e 2
cmp.i.v EQ
b [57]

:[56]
push.e 0

:[57]
bf [63]

:[58]
push.v self.shoulddir
pushi.e 3
cmp.i.v EQ
bf [60]

:[59]
pushi.e -4
pop.v.i self.hspeed

:[60]
push.v self.shoulddir
pushi.e 0
cmp.i.v EQ
bf [62]

:[61]
pushi.e -4
pop.v.i self.vspeed

:[62]
pushi.e 0
pop.v.i self.hedge
pushi.e 0
pop.v.i self.vedge

:[63]
push.v self.vedge
pushi.e 2
cmp.i.v EQ
bf [65]

:[64]
push.v self.hedge
pushi.e 1
cmp.i.v EQ
b [66]

:[65]
push.e 0

:[66]
bf [72]

:[67]
push.v self.shoulddir
pushi.e 2
cmp.i.v EQ
bf [69]

:[68]
pushi.e -4
pop.v.i self.vspeed

:[69]
push.v self.shoulddir
pushi.e 3
cmp.i.v EQ
bf [71]

:[70]
pushi.e 4
pop.v.i self.hspeed

:[71]
pushi.e 0
pop.v.i self.hedge
pushi.e 0
pop.v.i self.vedge

:[72]
push.v self.vedge
pushi.e 1
cmp.i.v EQ
bf [74]

:[73]
push.v self.hedge
pushi.e 2
cmp.i.v EQ
b [75]

:[74]
push.e 0

:[75]
bf [81]

:[76]
push.v self.shoulddir
pushi.e 1
cmp.i.v EQ
bf [78]

:[77]
pushi.e -4
pop.v.i self.hspeed

:[78]
push.v self.shoulddir
pushi.e 0
cmp.i.v EQ
bf [80]

:[79]
pushi.e 4
pop.v.i self.vspeed

:[80]
pushi.e 0
pop.v.i self.hedge
pushi.e 0
pop.v.i self.vedge

:[81]
push.v self.hedge
pushi.e 1
cmp.i.v EQ
bt [83]

:[82]
push.v self.hedge
pushi.e 2
cmp.i.v EQ
b [84]

:[83]
push.e 1

:[84]
bf [86]

:[85]
pushi.e -4
conv.i.v
pushi.e 4
conv.i.v
call.i choose(argc=2)
pop.v.v self.vspeed
pushi.e 0
pop.v.i self.hedge

:[86]
push.v self.vedge
pushi.e 1
cmp.i.v EQ
bt [88]

:[87]
push.v self.vedge
pushi.e 2
cmp.i.v EQ
b [89]

:[88]
push.e 1

:[89]
bf [91]

:[90]
pushi.e -4
conv.i.v
pushi.e 4
conv.i.v
call.i choose(argc=2)
pop.v.v self.hspeed
pushi.e 0
pop.v.i self.vedge

:[91]
pushi.e 0
pop.v.i self.movement
pushi.e 0
pop.v.i self.xmovement
pushi.e 12
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[92]
push.v self.x
push.v self.mykid
conv.v.i
pop.v.v [stacktop]self.x
push.v self.y
push.v self.mykid
conv.v.i
pop.v.v [stacktop]self.y
push.v self.mykid
conv.v.i
push.v [stacktop]self.using
pushi.e 1
cmp.i.v EQ
bf [end]

:[93]
call.i instance_destroy(argc=0)
popz.v

:[end]