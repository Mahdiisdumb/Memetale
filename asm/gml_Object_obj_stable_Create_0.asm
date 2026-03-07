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
pushi.e 0
pop.v.i self.open
call.i scr_depth(argc=0)
popz.v
pushi.e 2
conv.i.v
pushi.e 52
conv.i.v
pushi.e 214
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.mysolid
pushi.e -5
pushi.e 92
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [2]

:[1]
pushi.e 1
pop.v.i self.open

:[2]
pushi.e -5
pushi.e 92
push.v [array]global.flag
pushi.e 3
cmp.i.v GT
bf [6]

:[3]
pushi.e 2
pop.v.i self.open
push.v self.mysolid
conv.v.i
pushenv [5]

:[4]
call.i instance_destroy(argc=0)
popz.v

:[5]
popenv [4]

:[6]
pushi.e 0
pop.v.i self.con

:[end]