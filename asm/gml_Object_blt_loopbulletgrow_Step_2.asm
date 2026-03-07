.localvar 0 arguments

:[0]
push.v self.x
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
cmp.v.v GTE
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
pushglb.v global.turntimer
pushi.e 1
cmp.i.v LT
bf [end]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[end]