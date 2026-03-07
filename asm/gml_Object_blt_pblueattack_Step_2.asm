.localvar 0 arguments

:[0]
pushglb.v global.turntimer
pushi.e 1
cmp.i.v LT
bf [2]

:[1]
pushi.e -1
pop.v.i global.turntimer
pushi.e 3
pop.v.i global.mnfight
call.i instance_destroy(argc=0)
popz.v

:[2]
push.v self.x
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 40
sub.i.v
cmp.v.v LT
bf [4]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[4]
push.v global.turntimer
pushi.e 1
add.i.v
pop.v.v global.turntimer

:[end]