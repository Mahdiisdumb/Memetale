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
call.i scr_enemynpc1(argc=0)
pushi.e 1
cmp.i.v NEQ
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [end]

:[3]
pushi.e 1360
conv.i.v
push.v self.y
pushi.e 8
sub.i.v
push.v self.x
pushi.e 40
add.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 1498
conv.i.v
push.v self.y
push.v self.x
pushi.e 100
add.i.v
call.i instance_create(argc=3)
popz.v

:[end]