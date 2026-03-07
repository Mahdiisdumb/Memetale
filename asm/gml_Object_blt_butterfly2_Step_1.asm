.localvar 0 arguments

:[0]
push.v self.x
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
cmp.v.v LT
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
push.v self.x
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 16
sub.i.v
cmp.v.v GT
bf [4]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[4]
push.v self.y
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
cmp.v.v LT
bf [end]

:[5]
call.i instance_destroy(argc=0)
popz.v

:[end]