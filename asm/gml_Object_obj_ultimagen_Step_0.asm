.localvar 0 arguments

:[0]
push.v self.shotbuffer
pushi.e 1
add.i.v
pop.v.v self.shotbuffer
push.v self.timer
pushi.e 1
add.i.v
pop.v.v self.timer
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [46]

:[1]
push.v self.timer
pushi.e 8
cmp.i.v EQ
bf [3]

:[2]
pushi.e 8
conv.i.v
call.i event_user(argc=1)
popz.v

:[3]
push.v self.timer
pushi.e 10
cmp.i.v GT
bf [5]

:[4]
push.v self.timer
pushi.e 19
cmp.i.v LT
b [6]

:[5]
push.e 0

:[6]
bf [10]

:[7]
pushi.e 577
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.ub
pushi.e 0
push.v self.ub
conv.v.i
pop.v.i [stacktop]self.side
push.v self.ub
conv.v.i
pushenv [9]

:[8]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[9]
popenv [8]

:[10]
push.v self.timer
pushi.e 28
cmp.i.v EQ
bf [12]

:[11]
pushi.e 9
conv.i.v
call.i event_user(argc=1)
popz.v

:[12]
push.v self.timer
pushi.e 30
cmp.i.v GT
bf [14]

:[13]
push.v self.timer
pushi.e 39
cmp.i.v LT
b [15]

:[14]
push.e 0

:[15]
bf [19]

:[16]
pushi.e 577
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.ub
pushi.e 1
push.v self.ub
conv.v.i
pop.v.i [stacktop]self.side
push.v self.ub
conv.v.i
pushenv [18]

:[17]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[18]
popenv [17]

:[19]
push.v self.timer
pushi.e 48
cmp.i.v EQ
bf [21]

:[20]
pushi.e 8
conv.i.v
call.i event_user(argc=1)
popz.v

:[21]
push.v self.timer
pushi.e 50
cmp.i.v GT
bf [23]

:[22]
push.v self.timer
pushi.e 58
cmp.i.v LT
b [24]

:[23]
push.e 0

:[24]
bf [28]

:[25]
pushi.e 577
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.ub
pushi.e 0
push.v self.ub
conv.v.i
pop.v.i [stacktop]self.side
push.v self.ub
conv.v.i
pushenv [27]

:[26]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[27]
popenv [26]

:[28]
push.v self.timer
pushi.e 68
cmp.i.v EQ
bf [30]

:[29]
pushi.e 9
conv.i.v
call.i event_user(argc=1)
popz.v

:[30]
push.v self.timer
pushi.e 70
cmp.i.v GT
bf [32]

:[31]
push.v self.timer
pushi.e 78
cmp.i.v LT
b [33]

:[32]
push.e 0

:[33]
bf [37]

:[34]
pushi.e 577
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.ub
pushi.e 1
push.v self.ub
conv.v.i
pop.v.i [stacktop]self.side
push.v self.ub
conv.v.i
pushenv [36]

:[35]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[36]
popenv [35]

:[37]
push.v self.timer
pushi.e 103
cmp.i.v EQ
bf [39]

:[38]
pushi.e 8
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 9
conv.i.v
call.i event_user(argc=1)
popz.v

:[39]
push.v self.timer
pushi.e 105
cmp.i.v GT
bf [41]

:[40]
push.v self.timer
pushi.e 117
cmp.i.v LT
b [42]

:[41]
push.e 0

:[42]
bf [46]

:[43]
pushi.e 577
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.ub
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=2)
push.v self.ub
conv.v.i
pop.v.v [stacktop]self.side
push.v self.ub
conv.v.i
pushenv [45]

:[44]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[45]
popenv [44]

:[46]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [57]

:[47]
push.v self.timer
pushi.e 1
cmp.i.v EQ
bf [49]

:[48]
pushi.e 0
pop.v.i self.t_c

:[49]
push.v self.t_c
pushi.e 1
add.i.v
pop.v.v self.t_c
push.v self.t_c
pushi.e 2
cmp.i.v EQ
bf [57]

:[50]
pushi.e 577
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.ub
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=2)
pop.v.v self.sidez
push.v self.sidez
push.v self.ub
conv.v.i
pop.v.v [stacktop]self.side
push.v self.ub
conv.v.i
pushenv [52]

:[51]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[52]
popenv [51]
push.v self.sidez
pushi.e 0
cmp.i.v EQ
bf [54]

:[53]
pushi.e 8
conv.i.v
call.i event_user(argc=1)
popz.v

:[54]
push.v self.sidez
pushi.e 1
cmp.i.v EQ
bf [56]

:[55]
pushi.e 9
conv.i.v
call.i event_user(argc=1)
popz.v

:[56]
pushi.e -1
pop.v.i self.t_c

:[57]
push.v self.type
pushi.e 2
cmp.i.v EQ
bf [68]

:[58]
push.v self.timer
pushi.e 1
cmp.i.v EQ
bf [60]

:[59]
pushi.e 0
pop.v.i self.t_c

:[60]
push.v self.t_c
pushi.e 1
add.i.v
pop.v.v self.t_c
push.v self.t_c
pushi.e 2
cmp.i.v EQ
bf [68]

:[61]
pushi.e 577
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.ub
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=2)
pop.v.v self.sidez
push.v self.sidez
push.v self.ub
conv.v.i
pop.v.v [stacktop]self.side
push.v self.ub
conv.v.i
pushenv [63]

:[62]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[63]
popenv [62]
push.v self.sidez
pushi.e 0
cmp.i.v EQ
bf [65]

:[64]
pushi.e 8
conv.i.v
call.i event_user(argc=1)
popz.v

:[65]
push.v self.sidez
pushi.e 1
cmp.i.v EQ
bf [67]

:[66]
pushi.e 9
conv.i.v
call.i event_user(argc=1)
popz.v

:[67]
pushi.e 1
pop.v.i self.t_c

:[68]
push.v self.type
pushi.e 3
cmp.i.v EQ
bf [end]

:[69]
push.v self.timer
pushi.e 1
cmp.i.v EQ
bf [71]

:[70]
pushi.e 0
pop.v.i self.t_c

:[71]
push.v self.t_c
pushi.e 1
add.i.v
pop.v.v self.t_c
push.v self.t_c
pushi.e 2
cmp.i.v EQ
bf [end]

:[72]
pushi.e 577
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.ub
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=2)
pop.v.v self.sidez
push.v self.sidez
push.v self.ub
conv.v.i
pop.v.v [stacktop]self.side
push.v self.ub
conv.v.i
pushenv [74]

:[73]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[74]
popenv [73]
push.v self.sidez
pushi.e 0
cmp.i.v EQ
bf [76]

:[75]
pushi.e 8
conv.i.v
call.i event_user(argc=1)
popz.v

:[76]
push.v self.sidez
pushi.e 1
cmp.i.v EQ
bf [78]

:[77]
pushi.e 9
conv.i.v
call.i event_user(argc=1)
popz.v

:[78]
pushi.e -5
pop.v.i self.t_c

:[end]