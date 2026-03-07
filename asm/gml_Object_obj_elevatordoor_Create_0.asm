.localvar 0 arguments

:[0]
pushbltn.v self.room
pushi.e 216
cmp.i.v EQ
bf [4]

:[1]
push.v self.x
pushbltn.v self.room_width
pushi.e 2
conv.i.d
div.d.v
cmp.v.v LT
bf [4]

:[2]
pushi.e -5
pushi.e 493
push.v [array]global.flag
pushi.e 12
cmp.i.v GTE
bf [4]

:[3]
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
b [5]

:[4]
push.e 0

:[5]
bf [14]

:[6]
pushi.e 2
conv.i.v
push.v self.y
pushi.e 30
add.i.v
push.v self.x
call.i instance_create(argc=3)
popz.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 30
add.i.v
push.v self.x
pushi.e 20
add.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 791
pushenv [8]

:[7]
call.i instance_destroy(argc=0)
popz.v

:[8]
popenv [7]
pushi.e 1950
conv.i.v
push.v self.y
push.v self.x
call.i scr_marker(argc=3)
pop.v.v self.myvine
push.v self.depth
push.v self.myvine
conv.v.i
pop.v.v [stacktop]self.depth
pushi.e 1346
conv.i.v
pushi.e 120
conv.i.v
pushi.e 90
conv.i.v
call.i instance_create(argc=3)
popz.v
pushglb.v global.entrance
pushi.e 24
cmp.i.v EQ
bf [10]

:[9]
pushi.e 1576
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [11]

:[10]
push.e 0

:[11]
bf [13]

:[12]
pushi.e 90
pop.v.i 1576.x
pushi.e 130
pop.v.i 1576.y

:[13]
call.i instance_destroy(argc=0)
popz.v
exit.i

:[14]
pushi.e 2
conv.i.v
push.v self.y
pushi.e 30
add.i.v
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.s1
pushi.e 2
conv.i.v
push.v self.y
pushi.e 30
add.i.v
push.v self.x
pushi.e 20
add.i.v
call.i instance_create(argc=3)
pop.v.v self.s2
pushi.e 0
pop.v.i self.myinteract
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.side
pushglb.v global.entrance
pushi.e 19
cmp.i.v EQ
bf [16]

:[15]
pushi.e 1
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[16]
pushbltn.v self.room
pushi.e 189
cmp.i.v EQ
bf [29]

:[17]
pushi.e 205
pushi.e -5
pushi.e 200
pop.v.i [array]global.flag
pushi.e 40
pop.v.i self.con
pushi.e 0
pop.v.i self.ok
pushi.e -5
pushi.e 414
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [19]

:[18]
pushi.e 1
pop.v.i self.ok

:[19]
pushi.e -5
pushi.e 367
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [21]

:[20]
pushi.e 1
pop.v.i self.ok

:[21]
push.v self.ok
pushi.e 1
cmp.i.v EQ
bf [23]

:[22]
pushi.e 43
pop.v.i self.con

:[23]
pushi.e -5
pushi.e 418
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bt [26]

:[24]
pushi.e -5
pushi.e 419
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bt [26]

:[25]
pushi.e -5
pushi.e 420
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
b [27]

:[26]
push.e 1

:[27]
bf [29]

:[28]
pushi.e 0
pop.v.i self.con

:[29]
pushbltn.v self.room
pushi.e 210
cmp.i.v EQ
bf [31]

:[30]
pushi.e 205
pushi.e -5
pushi.e 200
pop.v.i [array]global.flag

:[31]
pushbltn.v self.room
pushi.e 217
cmp.i.v EQ
bf [36]

:[32]
pushi.e 50
pop.v.i self.con
pushi.e 0
pop.v.i self.ok
pushi.e -5
pushi.e 450
push.v [array]global.flag
pushi.e 17
cmp.i.v GTE
bf [34]

:[33]
pushi.e 1
pop.v.i self.ok

:[34]
push.v self.ok
pushi.e 1
cmp.i.v EQ
bf [36]

:[35]
pushi.e 0
pop.v.i self.con

:[36]
pushbltn.v self.room
pushi.e 183
cmp.i.v EQ
bf [38]

:[37]
pushi.e 50
pop.v.i self.con
pushi.e 0
pop.v.i self.ok

:[38]
pushbltn.v self.room
pushi.e 168
cmp.i.v EQ
bf [41]

:[39]
call.i scr_murderlv(argc=0)
pushi.e 12
cmp.i.v GTE
bf [41]

:[40]
pushi.e 1185
conv.i.v
pushi.e 140
conv.i.v
pushi.e 200
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.ff
pushi.e 3
push.v self.ff
conv.v.i
pop.v.i [stacktop]self.image_yscale

:[41]
pushbltn.v self.room
pushi.e 187
cmp.i.v EQ
bf [46]

:[42]
call.i scr_murderlv(argc=0)
pushi.e 12
cmp.i.v GTE
bf [46]

:[43]
pushi.e 1185
conv.i.v
pushi.e 100
conv.i.v
pushi.e 80
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.ff
push.v self.ff
conv.v.i
pushenv [45]

:[44]
pushi.e 3
pop.v.i self.image_yscale

:[45]
popenv [44]

:[46]
pushbltn.v self.room
pushi.e 157
cmp.i.v EQ
bf [51]

:[47]
call.i scr_murderlv(argc=0)
pushi.e 12
cmp.i.v GTE
bf [51]

:[48]
pushi.e 1185
conv.i.v
pushi.e 100
conv.i.v
pushi.e 80
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.ff
push.v self.ff
conv.v.i
pushenv [50]

:[49]
pushi.e 3
pop.v.i self.image_yscale

:[50]
popenv [49]

:[51]
pushbltn.v self.room
pushi.e 212
cmp.i.v EQ
bf [53]

:[52]
pushi.e 0
pop.v.i global.border
call.i SCR_BORDERSETUP(argc=0)
popz.v

:[53]
pushi.e 0
pop.v.i self.buffer

:[end]