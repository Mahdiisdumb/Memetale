.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.dmg
push.d 0.2
pushi.e 2
conv.i.v
call.i random(argc=1)
add.v.d
neg.v
pop.v.v self.vspeed
push.d -0.1
pop.v.d self.friction
push.d 0.25
pop.v.d self.image_speed
pushi.e 90
pop.v.i self.image_angle
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
bf [end]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[end]