.localvar 0 arguments

:[0]
pushi.e 1443
pop.v.i self.dsprite
pushi.e 1452
pop.v.i self.usprite
pushi.e 1457
pop.v.i self.lsprite
pushi.e 1453
pop.v.i self.rsprite
pushi.e 1443
pop.v.i self.dtsprite
pushi.e 1452
pop.v.i self.utsprite
pushi.e 1457
pop.v.i self.ltsprite
pushi.e 1453
pop.v.i self.rtsprite
pushi.e 0
pop.v.i self.myinteract
pushi.e 0
pop.v.i self.facing
pushi.e 0
pop.v.i self.direction
pushi.e 0
pop.v.i self.talkedto
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.dis
pushglb.v global.plot
pushi.e 163
cmp.i.v GT
bf [2]

:[1]
pushi.e 1
pop.v.i self.dis

:[2]
pushi.e -5
pushi.e 397
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e 1
pop.v.i self.dis

:[4]
push.v self.dis
pushi.e 1
cmp.i.v EQ
bf [end]

:[5]
call.i instance_destroy(argc=0)
popz.v

:[end]