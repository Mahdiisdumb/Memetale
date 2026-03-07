.localvar 0 arguments

:[0]
push.v self.y
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 4
add.i.v
cmp.v.v GT
bf [end]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[end]