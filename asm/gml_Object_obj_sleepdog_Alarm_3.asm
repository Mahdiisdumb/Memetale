.localvar 0 arguments

:[0]
pushi.e 644
conv.i.v
push.v self.y
pushi.e 8
add.i.v
push.v self.x
pushi.e 20
add.i.v
call.i instance_create(argc=3)
popz.v

:[end]