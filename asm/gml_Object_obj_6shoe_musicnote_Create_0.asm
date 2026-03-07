.localvar 0 arguments

:[0]
push.i 65280
pop.v.i self.image_blend
pushi.e 300
conv.i.v
call.i random(argc=1)
pop.v.v self.siner
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale

:[end]