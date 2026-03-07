.localvar 0 arguments

:[0]
pushi.e 1402
pop.v.i self.dsprite
pushi.e 1414
pop.v.i self.usprite
pushi.e 1419
pop.v.i self.lsprite
pushi.e 1417
pop.v.i self.rsprite
pushi.e 1405
pop.v.i self.dtsprite
pushi.e 1416
pop.v.i self.utsprite
pushi.e 1423
pop.v.i self.ltsprite
pushi.e 1424
pop.v.i self.rtsprite
pushi.e 0
pop.v.i self.myinteract
pushi.e 0
pop.v.i self.facing
pushi.e 270
pop.v.i self.direction
pushi.e 0
pop.v.i self.talkedto
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.fun
pushi.e 0
pop.v.i self.dir
pushi.e 0
pop.v.i self.rid
pushi.e -5
pushi.e 67
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v
exit.i

:[2]
pushbltn.v self.room
pushi.e 68
cmp.i.v EQ
bf [17]

:[3]
pushi.e 1
pop.v.i self.dir
pushi.e -5
pushi.e 88
push.v [array]global.flag
pushi.e 4
cmp.i.v GTE
bf [5]

:[4]
pushglb.v global.plot
pushi.e 105
cmp.i.v LTE
b [6]

:[5]
push.e 0

:[6]
bf [8]

:[7]
call.i instance_destroy(argc=0)
popz.v
exit.i

:[8]
pushi.e -5
pushi.e 354
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [10]

:[9]
pushi.e -5
pushi.e 389
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
b [11]

:[10]
push.e 0

:[11]
bf [13]

:[12]
call.i instance_destroy(argc=0)
popz.v
exit.i

:[13]
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [15]

:[14]
call.i instance_destroy(argc=0)
popz.v
exit.i

:[15]
pushi.e -5
pushi.e 389
push.v [array]global.flag
pushi.e 3
cmp.i.v GTE
bf [17]

:[16]
pushi.e 1315
conv.i.v
push.v self.y
pushi.e 14
sub.i.v
push.v self.x
pushi.e 34
sub.i.v
call.i instance_create(argc=3)
popz.v

:[17]
pushbltn.v self.room
pushi.e 117
cmp.i.v EQ
bf [end]

:[18]
pushi.e 0
pop.v.i self.d
pushi.e -5
pushi.e 354
push.v [array]global.flag
pushi.e 2
cmp.i.v LT
bf [20]

:[19]
pushi.e 1
pop.v.i self.d

:[20]
pushi.e -5
pushi.e 88
push.v [array]global.flag
pushi.e 4
cmp.i.v LT
bf [22]

:[21]
pushi.e 1
pop.v.i self.d

:[22]
pushi.e -5
pushi.e 389
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [24]

:[23]
pushi.e 1
pop.v.i self.d

:[24]
push.v self.d
pushi.e 1
cmp.i.v EQ
bf [end]

:[25]
call.i instance_destroy(argc=0)
popz.v
exit.i

:[end]