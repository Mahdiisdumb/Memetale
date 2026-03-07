.localvar 0 arguments

:[0]
push.v self.size
pushi.e 1
cmp.i.v LT
bf [2]

:[1]
push.v self.size
push.d 0.025
add.d.v
pop.v.v self.size

:[2]
push.v self.hspeed
pushi.e 0
cmp.i.v GT
bf [4]

:[3]
push.v self.size
pop.v.v self.image_xscale

:[4]
push.v self.hspeed
pushi.e 0
cmp.i.v LT
bf [6]

:[5]
push.v self.size
neg.v
pop.v.v self.image_xscale

:[6]
push.v self.size
pop.v.v self.image_yscale

:[end]