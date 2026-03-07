.localvar 0 arguments

:[0]
pushi.e 396
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 20
add.i.v
push.v 744.x
pushi.e 50
sub.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 396
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 20
add.i.v
push.v 744.x
pushi.e 10
add.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 396
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 20
add.i.v
push.v 744.x
pushi.e 70
add.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 396
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
push.v self.dmg
pop.v.v 396.dmg

:[2]
push.v self.rate
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[end]