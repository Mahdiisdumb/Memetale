.localvar 0 arguments

:[0]
pushi.e 201
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushi.e 201
conv.i.v
push.v self.ystart
pushi.e 80
sub.i.v
push.v self.xstart
pushi.e 500
add.i.v
call.i instance_create(argc=3)
popz.v

:[end]