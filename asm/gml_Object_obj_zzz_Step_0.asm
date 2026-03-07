.localvar 0 arguments

:[0]
push.v self.stage
pushi.e 1
add.i.v
pop.v.v self.stage
push.v self.stage
pushi.e 40
cmp.i.v LT
bf [3]

:[1]
push.v self.image_alpha
pushi.e 1
cmp.i.v LT
bf [3]

:[2]
push.v self.image_alpha
push.d 0.05
add.d.v
pop.v.v self.image_alpha

:[3]
push.v self.stage
pushi.e 50
cmp.i.v GT
bf [6]

:[4]
push.v self.image_alpha
push.d 0.05
sub.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
pushi.e 0
cmp.i.v LTE
bf [6]

:[5]
call.i instance_destroy(argc=0)
popz.v

:[6]
push.v self.x
push.v self.stage
pushi.e 8
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.5
mul.d.v
add.v.v
pop.v.v self.x
push.v self.image_index
pushi.e 2
cmp.i.v GTE
bf [end]

:[7]
pushi.e 0
pop.v.i self.image_speed

:[end]