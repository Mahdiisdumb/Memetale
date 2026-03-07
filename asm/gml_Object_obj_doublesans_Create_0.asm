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
pushi.e 270
pop.v.i self.direction
pushi.e 0
pop.v.i self.talkedto
pushi.e 0
pop.v.i self.image_speed
pushglb.v global.plot
pushi.e 64
cmp.i.v GT
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
pushi.e 0
pop.v.i self.gone
pushi.e -5
pushi.e 413
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [4]

:[3]
pushi.e 1
pop.v.i self.gone

:[4]
pushi.e -5
pushi.e 67
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [6]

:[5]
pushi.e 1
pop.v.i self.gone

:[6]
push.v self.gone
pushi.e 1
cmp.i.v EQ
bf [end]

:[7]
call.i instance_destroy(argc=0)
popz.v

:[end]