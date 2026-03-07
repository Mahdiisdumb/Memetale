.localvar 0 arguments

:[0]
push.v self.on
pushi.e 1
cmp.i.v EQ
bf [5]

:[1]
push.v self.image_alpha
pushi.e 1
cmp.i.v LT
bf [3]

:[2]
push.v self.image_alpha
push.d 0.1
add.d.v
pop.v.v self.image_alpha
b [4]

:[3]
pushi.e 2
pop.v.i self.on

:[4]
push.d 0.1
pop.v.d self.gravity
pushi.e 20
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm

:[5]
push.v self.on
pushi.e 3
cmp.i.v EQ
bf [10]

:[6]
push.v self.image_alpha
pushi.e 0
cmp.i.v GT
bf [8]

:[7]
push.v self.image_alpha
push.d 0.04
sub.d.v
pop.v.v self.image_alpha

:[8]
push.v self.image_alpha
push.d 0.1
cmp.d.v LT
bf [10]

:[9]
call.i instance_destroy(argc=0)
popz.v

:[10]
push.v self.direction
pop.v.v self.image_angle

:[end]