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
call.i scr_depth(argc=0)
popz.v
pushi.e 0
pop.v.i self.lafftrax
pushi.e 0
pop.v.i self.conversation
push.d 0.75
pop.v.d self.hspeed
pushi.e 1
pop.v.i global.interact
push.d 0.1
pop.v.d self.image_speed
pushi.e 92
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.hh
push.d 0.5
push.v self.hh
conv.v.i
pop.v.d [stacktop]self.fadespeed
pushi.e 89
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.uuu
push.v 1576.y
pushi.e 1
sub.i.v
pop.v.v self.y
pushi.e 0
pop.v.i self.shakehand
pushi.e 0
pop.v.i self.murder
call.i scr_murderlv(argc=0)
pushi.e 2
cmp.i.v GTE
bf [end]

:[1]
pushi.e 1
pop.v.i self.murder

:[end]