.localvar 0 arguments

:[0]
pushglb.v global.plot
pushi.e 35
cmp.i.v GTE
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
pushi.e 0
pop.v.i self.broken
push.d 0.2
pop.v.d self.image_speed
pushi.e 1
pop.v.i self.hspeed
pushi.e 3
pushi.e -5
pushi.e 47
pop.v.i [array]global.flag
pushi.e 89
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.iii
push.v 1576.x
pop.v.v self.gert

:[end]