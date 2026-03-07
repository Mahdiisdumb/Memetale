.localvar 0 arguments

:[0]
push.d 0.1
pop.v.d self.friction
pushi.e -6
pop.v.i self.vspeed
push.d 0.3
pop.v.d self.image_xscale
push.d 0.3
pop.v.d self.image_yscale
pushi.e 360
conv.i.v
call.i random(argc=1)
pop.v.v self.image_angle
push.d 0.2
push.d 0.4
conv.d.v
call.i random(argc=1)
sub.v.d
pop.v.v self.hspeed
pushi.e 2
pushi.e 4
conv.i.v
call.i random(argc=1)
sub.v.i
pop.v.v self.aa
pushi.e 0
pop.v.i self.t

:[end]