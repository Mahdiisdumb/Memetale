.localvar 0 arguments

:[0]
push.d 0.1
pop.v.d self.friction
pushi.e 2
pushi.e 2
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.hspeed
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
push.d 0.1
pop.v.d self.image_alpha
pushi.e 0
pop.v.i self.timer

:[end]