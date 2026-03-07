.localvar 0 arguments

:[0]
pushi.e 2
pop.v.i self.image_yscale
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pushi.e 3
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.vspeed
pushi.e 270
pop.v.i self.gravity_direction
push.d 0.06
pop.v.d self.gravity
push.v self.y
pushi.e 200
cmp.i.v GT
bf [2]

:[1]
pushi.e -2
pop.v.i self.image_yscale
push.v self.gravity
neg.v
pop.v.v self.gravity
push.v self.vspeed
neg.v
pop.v.v self.vspeed

:[2]
pushi.e 0
pop.v.i self.siner
pushi.e 0
pop.v.i self.shake

:[end]