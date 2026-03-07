.localvar 0 arguments

:[0]
pushi.e 2
pop.v.i self.image_yscale
push.d 0.01
pop.v.d self.image_xscale
pushi.e -100
pop.v.i self.x
push.d 0.08
push.d 0.05
conv.d.v
call.i random(argc=1)
add.v.d
pop.v.v self.xspeed
pushi.e 0
pop.v.i self.shimmy
pushi.e 0
pop.v.i self.siner

:[end]