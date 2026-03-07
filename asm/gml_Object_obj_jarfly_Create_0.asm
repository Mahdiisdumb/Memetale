.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.siner
pushi.e 1
pushi.e 2
conv.i.v
call.i random(argc=1)
sub.v.i
pop.v.v self.hspeed
pushi.e 1
pushi.e 2
conv.i.v
call.i random(argc=1)
sub.v.i
pop.v.v self.vspeed
pushi.e 0
pop.v.i self.image_alpha
pushi.e 12
conv.i.v
call.i random(argc=1)
pop.v.v self.siner
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale

:[end]