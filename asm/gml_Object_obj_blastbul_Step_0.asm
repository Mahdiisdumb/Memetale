.localvar 0 arguments

:[0]
push.v self.size
push.d 0.1
add.d.v
pop.v.v self.size
push.v self.size
push.v self.maxsize
cmp.v.v GT
bf [2]

:[1]
push.v self.image_alpha
push.d 0.2
sub.d.v
pop.v.v self.image_alpha

:[2]
push.v self.size
pop.v.v self.image_xscale
push.v self.size
pop.v.v self.image_yscale
push.v self.image_alpha
push.d 0.06
cmp.d.v LT
bf [4]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[4]
push.v self.xstart
pushi.e 3
add.i.v
pushi.e 6
conv.i.v
call.i random(argc=1)
sub.v.v
pop.v.v self.x
push.v self.ystart
pushi.e 3
add.i.v
pushi.e 6
conv.i.v
call.i random(argc=1)
sub.v.v
pop.v.v self.y

:[end]