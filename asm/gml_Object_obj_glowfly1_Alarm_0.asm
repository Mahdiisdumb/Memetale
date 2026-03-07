.localvar 0 arguments

:[0]
push.v self.speed
push.d 0.5
cmp.d.v LT
bf [2]

:[1]
push.d -0.04
pop.v.d self.friction
push.v self.speed
push.d 0.1
add.d.v
pop.v.v self.speed
push.v self.speed
push.v self.ystart
pushi.e 20
sub.i.v
pushi.e 40
conv.i.v
call.i random(argc=1)
add.v.v
push.v self.xstart
pushi.e 20
sub.i.v
pushi.e 40
conv.i.v
call.i random(argc=1)
add.v.v
call.i move_towards_point(argc=3)
popz.v

:[2]
push.v self.speed
push.d 0.5
cmp.d.v GT
bf [4]

:[3]
push.d 0.04
pop.v.d self.friction

:[4]
push.d 0.03
pop.v.d self.gravity
pushi.e 360
conv.i.v
call.i random(argc=1)
pop.v.v self.gravity_direction
pushi.e 30
pushi.e 20
conv.i.v
call.i random(argc=1)
add.v.i
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[end]