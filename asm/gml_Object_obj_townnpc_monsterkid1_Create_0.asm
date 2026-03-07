.localvar 0 arguments

:[0]
pushi.e 1482
pop.v.i self.dsprite
pushi.e 1490
pop.v.i self.usprite
pushi.e 1485
pop.v.i self.lsprite
pushi.e 1487
pop.v.i self.rsprite
pushi.e 1484
pop.v.i self.dtsprite
pushi.e 1491
pop.v.i self.utsprite
pushi.e 1486
pop.v.i self.ltsprite
pushi.e 1489
pop.v.i self.rtsprite
pushi.e 0
pop.v.i self.myinteract
pushi.e 3
pop.v.i self.facing
pushi.e 270
pop.v.i self.direction
pushi.e 0
pop.v.i self.talkedto
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.fun
pushglb.v global.plot
pushi.e 100
cmp.i.v GT
bf [3]

:[1]
pushbltn.v self.room
pushi.e 68
cmp.i.v EQ
bf [3]

:[2]
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
call.i instance_destroy(argc=0)
popz.v

:[6]
pushglb.v global.plot
pushi.e 103
cmp.i.v GT
bf [8]

:[7]
pushbltn.v self.room
pushi.e 83
cmp.i.v EQ
b [9]

:[8]
push.e 0

:[9]
bf [end]

:[10]
call.i instance_destroy(argc=0)
popz.v

:[end]