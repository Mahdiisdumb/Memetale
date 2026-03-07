.localvar 0 arguments

:[0]
push.v self.ap
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.image_alpha
push.d 0.25
add.d.v
pop.v.v self.image_alpha

:[2]
push.v self.image_alpha
push.d 0.6
cmp.d.v GT
bf [4]

:[3]
pushi.e 1
pop.v.i self.ap

:[4]
push.v self.direction
pushi.e 6
conv.i.v
call.i random(argc=1)
pushi.e 3
sub.i.v
add.v.v
pop.v.v self.direction
push.v self.speed
push.d 0.04
conv.d.v
call.i random(argc=1)
push.d 0.02
sub.d.v
add.v.v
pop.v.v self.speed
push.v self.image_alpha
push.d 0.01
sub.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
push.d 0.02
cmp.d.v LT
bf [end]

:[5]
call.i instance_destroy(argc=0)
popz.v

:[end]