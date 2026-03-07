.localvar 0 arguments

:[0]
pushglb.v global.debug
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
pushi.e 1625
conv.i.v
pushi.e 260
conv.i.v
pushi.e 190
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 1625
conv.i.v
pushi.e 260
conv.i.v
pushi.e 415
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.ppp
pushi.e 1
push.v self.ppp
conv.v.i
pop.v.i [stacktop]self.spec
pushi.e 1625
conv.i.v
pushi.e 260
conv.i.v
pushi.e 640
conv.i.v
call.i instance_create(argc=3)
popz.v

:[end]