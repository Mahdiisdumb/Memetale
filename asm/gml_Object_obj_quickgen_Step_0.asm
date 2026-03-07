.localvar 0 arguments

:[0]
pushi.e 676
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
push.v 676.vspeed
push.d 0.04
sub.d.v
pop.v.v 676.vspeed

:[2]
push.v global.turntimer
pushi.e 1
sub.i.v
pop.v.v global.turntimer
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
pushglb.v global.turntimer
pushi.e 8
cmp.i.v LT
bf [4]

:[3]
pushglb.v global.currentroom
call.i room_goto(argc=1)
popz.v
pushi.e 0
pop.v.i global.invc

:[4]
pushglb.v global.turntimer
pushi.e 12
cmp.i.v LT
bf [end]

:[5]
pushi.e 150
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[end]