.localvar 0 arguments

:[0]
push.v self.goalsize
push.v self.size
push.d 0.1
add.d.v
cmp.v.v GT
bf [2]

:[1]
push.v self.size
push.d 0.03
add.d.v
pop.v.v self.size

:[2]
push.v self.goalsize
push.v self.size
push.d 0.1
sub.d.v
cmp.v.v LT
bf [4]

:[3]
push.v self.size
push.d 0.03
sub.d.v
pop.v.v self.size

:[4]
push.v self.size
pop.v.v self.image_xscale
push.v self.size
pop.v.v self.image_yscale
push.v self.image_alpha
push.d 0.01
sub.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
push.d 0.01
cmp.d.v LT
bf [6]

:[5]
call.i instance_destroy(argc=0)
popz.v

:[6]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.x
push.v self.siner
push.v self.gg
div.v.v
call.i sin(argc=1)
push.v self.rr
mul.v.v
add.v.v
pop.v.v self.x
push.v self.y
push.v self.siner
push.v self.gg
div.v.v
call.i cos(argc=1)
push.v self.vv
mul.v.v
add.v.v
pop.v.v self.y

:[end]