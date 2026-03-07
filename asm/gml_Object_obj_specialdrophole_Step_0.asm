.localvar 0 arguments

:[0]
pushglb.v global.plot
pushi.e 63
cmp.i.v GTE
bf [end]

:[1]
pushi.e 1372
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
popz.v
pushi.e 1378
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [3]

:[2]
pushi.e 1378
conv.i.v
push.v self.y
push.v self.x
pushi.e 3
add.i.v
call.i instance_create(argc=3)
popz.v

:[3]
call.i instance_destroy(argc=0)
popz.v

:[end]