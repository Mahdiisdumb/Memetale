.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.fade
pushi.e 0
pop.v.i self.hit
pushi.e 0
pop.v.i self.myscore
pushi.e 274
pop.v.i self.check
pushi.e 0
pop.v.i self.thensc
pushi.e 274
push.v self.x
add.v.i
pop.v.v self.fatalx
pushi.e -50
pop.v.i self.wherex
pushi.e 0
pop.v.i self.type
pushglb.v global.weapon
pushi.e 25
cmp.i.v EQ
bf [2]

:[1]
pushi.e 0
pop.v.i self.type

:[2]
pushglb.v global.weapon
pushi.e 47
cmp.i.v EQ
bf [4]

:[3]
pushi.e 1
pop.v.i self.type

:[4]
pushglb.v global.weapon
pushi.e 49
cmp.i.v EQ
bf [6]

:[5]
pushi.e 2
pop.v.i self.type

:[6]
pushglb.v global.weapon
pushi.e 45
cmp.i.v EQ
bf [8]

:[7]
pushi.e 3
pop.v.i self.type

:[8]
pushi.e 3
pop.v.i self.num
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [22]

:[9]
pushi.e 0
conv.i.v
call.i choose(argc=1)
pop.v.v self.lr
push.v self.lr
pushi.e 0
cmp.i.v EQ
bf [11]

:[10]
pushi.e 4
conv.i.v
call.i event_user(argc=1)
popz.v

:[11]
push.v self.lr
pushi.e 1
cmp.i.v EQ
bf [13]

:[12]
pushi.e 5
conv.i.v
call.i event_user(argc=1)
popz.v

:[13]
pushi.e 50
conv.i.v
pushi.e 25
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=3)
pop.v.v self.wherex
pushi.e 0
conv.i.v
call.i choose(argc=1)
pop.v.v self.lr
push.v self.lr
pushi.e 0
cmp.i.v EQ
bf [15]

:[14]
pushi.e 4
conv.i.v
call.i event_user(argc=1)
popz.v

:[15]
push.v self.lr
pushi.e 1
cmp.i.v EQ
bf [17]

:[16]
pushi.e 5
conv.i.v
call.i event_user(argc=1)
popz.v

:[17]
pushi.e 150
conv.i.v
pushi.e 125
conv.i.v
pushi.e 100
conv.i.v
call.i choose(argc=3)
pop.v.v self.wherex
pushi.e 0
conv.i.v
call.i choose(argc=1)
pop.v.v self.lr
push.v self.lr
pushi.e 0
cmp.i.v EQ
bf [19]

:[18]
pushi.e 4
conv.i.v
call.i event_user(argc=1)
popz.v

:[19]
push.v self.lr
pushi.e 1
cmp.i.v EQ
bf [21]

:[20]
pushi.e 5
conv.i.v
call.i event_user(argc=1)
popz.v

:[21]
pushi.e 3
pop.v.i self.num

:[22]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [40]

:[23]
pushi.e 1
conv.i.v
call.i choose(argc=1)
pop.v.v self.lr
push.v self.lr
pushi.e 0
cmp.i.v EQ
bf [25]

:[24]
pushi.e 4
conv.i.v
call.i event_user(argc=1)
popz.v

:[25]
push.v self.lr
pushi.e 1
cmp.i.v EQ
bf [27]

:[26]
pushi.e 5
conv.i.v
call.i event_user(argc=1)
popz.v

:[27]
pushi.e 50
conv.i.v
pushi.e 25
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=3)
pop.v.v self.wherex
pushi.e 1
conv.i.v
call.i choose(argc=1)
pop.v.v self.lr
push.v self.lr
pushi.e 0
cmp.i.v EQ
bf [29]

:[28]
pushi.e 4
conv.i.v
call.i event_user(argc=1)
popz.v

:[29]
push.v self.lr
pushi.e 1
cmp.i.v EQ
bf [31]

:[30]
pushi.e 5
conv.i.v
call.i event_user(argc=1)
popz.v

:[31]
pushi.e 150
conv.i.v
pushi.e 125
conv.i.v
pushi.e 100
conv.i.v
call.i choose(argc=3)
pop.v.v self.wherex
pushi.e 1
conv.i.v
call.i choose(argc=1)
pop.v.v self.lr
push.v self.lr
pushi.e 0
cmp.i.v EQ
bf [33]

:[32]
pushi.e 4
conv.i.v
call.i event_user(argc=1)
popz.v

:[33]
push.v self.lr
pushi.e 1
cmp.i.v EQ
bf [35]

:[34]
pushi.e 5
conv.i.v
call.i event_user(argc=1)
popz.v

:[35]
pushi.e 200
pop.v.i self.wherex
pushi.e 1
conv.i.v
call.i choose(argc=1)
pop.v.v self.lr
push.v self.lr
pushi.e 0
cmp.i.v EQ
bf [37]

:[36]
pushi.e 4
conv.i.v
call.i event_user(argc=1)
popz.v

:[37]
push.v self.lr
pushi.e 1
cmp.i.v EQ
bf [39]

:[38]
pushi.e 5
conv.i.v
call.i event_user(argc=1)
popz.v

:[39]
pushi.e 4
pop.v.i self.num

:[40]
push.v self.type
pushi.e 2
cmp.i.v EQ
bf [58]

:[41]
pushi.e 120
pop.v.i self.wherex
pushi.e 0
conv.i.v
call.i choose(argc=1)
pop.v.v self.lr
push.v self.lr
pushi.e 0
cmp.i.v EQ
bf [43]

:[42]
pushi.e 4
conv.i.v
call.i event_user(argc=1)
popz.v

:[43]
push.v self.lr
pushi.e 1
cmp.i.v EQ
bf [45]

:[44]
pushi.e 5
conv.i.v
call.i event_user(argc=1)
popz.v

:[45]
pushi.e 240
conv.i.v
pushi.e 210
conv.i.v
pushi.e 180
conv.i.v
call.i choose(argc=3)
pop.v.v self.wherex
pushi.e 0
conv.i.v
call.i choose(argc=1)
pop.v.v self.lr
push.v self.lr
pushi.e 0
cmp.i.v EQ
bf [47]

:[46]
pushi.e 4
conv.i.v
call.i event_user(argc=1)
popz.v

:[47]
push.v self.lr
pushi.e 1
cmp.i.v EQ
bf [49]

:[48]
pushi.e 5
conv.i.v
call.i event_user(argc=1)
popz.v

:[49]
pushi.e 360
conv.i.v
pushi.e 330
conv.i.v
pushi.e 300
conv.i.v
call.i choose(argc=3)
pop.v.v self.wherex
pushi.e 0
conv.i.v
call.i choose(argc=1)
pop.v.v self.lr
push.v self.lr
pushi.e 0
cmp.i.v EQ
bf [51]

:[50]
pushi.e 4
conv.i.v
call.i event_user(argc=1)
popz.v

:[51]
push.v self.lr
pushi.e 1
cmp.i.v EQ
bf [53]

:[52]
pushi.e 5
conv.i.v
call.i event_user(argc=1)
popz.v

:[53]
pushi.e 460
conv.i.v
pushi.e 430
conv.i.v
pushi.e 400
conv.i.v
call.i choose(argc=3)
pop.v.v self.wherex
pushi.e 0
conv.i.v
call.i choose(argc=1)
pop.v.v self.lr
push.v self.lr
pushi.e 0
cmp.i.v EQ
bf [55]

:[54]
pushi.e 4
conv.i.v
call.i event_user(argc=1)
popz.v

:[55]
push.v self.lr
pushi.e 1
cmp.i.v EQ
bf [57]

:[56]
pushi.e 5
conv.i.v
call.i event_user(argc=1)
popz.v

:[57]
pushi.e 4
pop.v.i self.num

:[58]
push.v self.type
pushi.e 3
cmp.i.v EQ
bf [end]

:[59]
pushi.e 1
conv.i.v
call.i choose(argc=1)
pop.v.v self.lr
pushi.e -25
conv.i.v
pushi.e -50
conv.i.v
call.i choose(argc=2)
pop.v.v self.wherex
push.v self.lr
pushi.e 0
cmp.i.v EQ
bf [61]

:[60]
pushi.e 4
conv.i.v
call.i event_user(argc=1)
popz.v

:[61]
push.v self.lr
pushi.e 1
cmp.i.v EQ
bf [63]

:[62]
pushi.e 5
conv.i.v
call.i event_user(argc=1)
popz.v

:[63]
pushi.e 50
conv.i.v
pushi.e 25
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=3)
pop.v.v self.wherex
pushi.e 1
conv.i.v
call.i choose(argc=1)
pop.v.v self.lr
push.v self.lr
pushi.e 0
cmp.i.v EQ
bf [65]

:[64]
pushi.e 4
conv.i.v
call.i event_user(argc=1)
popz.v

:[65]
push.v self.lr
pushi.e 1
cmp.i.v EQ
bf [67]

:[66]
pushi.e 5
conv.i.v
call.i event_user(argc=1)
popz.v

:[67]
pushi.e 2
pop.v.i self.num

:[end]