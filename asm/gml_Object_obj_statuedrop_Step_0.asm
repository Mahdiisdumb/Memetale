.localvar 0 arguments

:[0]
pushi.e 1159
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[1]
push.v self.y
push.v 1159.y
pushi.e 100
add.i.v
cmp.v.v GT
bf [end]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[end]