.localvar 0 arguments

:[0]
push.d 0.1
pop.v.d self.image_speed
push.d 0.2
pop.v.d self.image_alpha
pushi.e 0
pop.v.i self.stage
push.d 0.01
pop.v.d self.friction
pushi.e -1
pop.v.i self.vspeed
pushi.e 1
conv.i.v
call.i random(argc=1)
push.d 0.5
sub.d.v
pop.v.v self.hspeed

:[end]