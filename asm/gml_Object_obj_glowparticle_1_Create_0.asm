.localvar 0 arguments

:[0]
pushi.e -1
pushi.e 1
conv.i.v
call.i random(argc=1)
sub.v.i
pop.v.v self.vspeed
push.d 0.02
pop.v.d self.friction
push.v self.direction
pushi.e 20
conv.i.v
call.i random(argc=1)
pushi.e 10
sub.i.v
add.v.v
pop.v.v self.direction
pushi.e 0
pop.v.i self.ap
pushi.e 0
pop.v.i self.image_alpha
push.d 0.2
push.d 0.4
conv.d.v
call.i random(argc=1)
add.v.d
pop.v.v self.size
push.v self.size
pop.v.v self.image_xscale
push.v self.size
pop.v.v self.image_yscale

:[end]