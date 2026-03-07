.localvar 0 arguments

:[0]
push.d 0.15
pop.v.d self.friction
pushi.e 3
push.d 0.5
conv.d.v
call.i random(argc=1)
add.v.i
pop.v.v self.vspeed
push.d 0.5
pushi.e 1
conv.i.v
call.i random(argc=1)
sub.v.d
pop.v.v self.hspeed
push.d 0.1
pop.v.d self.image_xscale
push.d 0.1
pop.v.d self.image_yscale
push.d 0.7
pop.v.d self.image_alpha
pushi.e 360
conv.i.v
call.i random(argc=1)
pop.v.v self.image_angle

:[end]