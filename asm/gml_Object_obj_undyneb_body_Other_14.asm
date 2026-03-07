.localvar 0 arguments

:[0]
pushi.e 263
conv.i.v
push.v self.y
pushi.e 20
sub.i.v
push.v self.x
pushi.e 20
sub.i.v
call.i instance_create(argc=3)
popz.v

:[end]