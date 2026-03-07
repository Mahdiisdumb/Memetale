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
pop.v.i self.con
pushglb.v global.plot
pushi.e 110
cmp.i.v LT
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
call.i scr_murderlv(argc=0)
pushi.e 8
cmp.i.v GTE
bf [4]

:[3]
pushi.e -5
pushi.e 27
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
pushi.e 900
pop.v.i self.y

:[7]
pushglb.v global.entrance
pushi.e 24
cmp.i.v EQ
bf [end]

:[8]
pushi.e 1
pop.v.i global.interact
pushi.e 20
pop.v.i self.con
pushi.e 0
pop.v.i self.visible
pushi.e 0
pop.v.i 1576.visible
push.v self.x
pop.v.v 1576.x
push.v self.y
pushi.e 15
sub.i.v
pop.v.v 1576.y

:[end]