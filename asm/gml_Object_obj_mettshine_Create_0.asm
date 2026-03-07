.localvar 0 arguments

:[0]
push.d 0.3
pop.v.d self.image_speed
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 1
pushi.e 1
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.size
push.v self.size
pop.v.v self.image_xscale
push.v self.size
pop.v.v self.image_yscale

:[end]