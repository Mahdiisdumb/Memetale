.localvar 0 arguments

:[0]
push.d 0.5
conv.d.v
call.i random(argc=1)
push.d 0.5
conv.d.v
call.i random(argc=1)
sub.v.v
pop.v.v self.hspeed
pushi.e 1
pop.v.i self.vspeed
push.d 0.1
pop.v.d self.gravity
pushi.e 0
pop.v.i self.timer
push.d 0.2
pop.v.d self.image_speed

:[end]