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
call.i scr_depth(argc=0)
popz.v
pushi.e 0
pop.v.i self.con
pushglb.v global.plot
pushi.e 115
cmp.i.v GT
bf [2]

:[1]
pushbltn.v self.room
pushi.e 115
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
call.i instance_destroy(argc=0)
popz.v

:[5]
pushi.e 0
pop.v.i self.float
pushi.e 0
pop.v.i self.offground
pushi.e 0
pop.v.i self.siner

:[end]