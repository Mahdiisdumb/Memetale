.localvar 0 arguments

:[0]
pushi.e 5
pop.v.i self.hspeed
pushi.e 5
pop.v.i self.vspeed
push.v self.direction
pushi.e 15
pushi.e 30
conv.i.v
call.i random(argc=1)
sub.v.i
sub.v.v
pop.v.v self.direction
pushi.e 374
conv.i.v
push.v self.y
pushi.e 5
add.i.v
push.v self.x
pushi.e 5
add.i.v
call.i instance_create(argc=3)
popz.v
push.d 0.1
pop.v.d self.image_alpha
pushi.e 8
pop.v.i self.dmg

:[end]