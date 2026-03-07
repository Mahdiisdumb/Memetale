.localvar 0 arguments

:[0]
push.v self.x
pushi.e 650
cmp.i.v GT
bt [2]

:[1]
push.v self.y
pushi.e 490
cmp.i.v GT
b [3]

:[2]
push.e 1

:[3]
bf [5]

:[4]
call.i instance_destroy(argc=0)
popz.v

:[5]
push.v self.image_alpha
pushi.e 1
cmp.i.v LT
bf [end]

:[6]
push.v self.image_alpha
push.d 0.2
add.d.v
pop.v.v self.image_alpha

:[end]