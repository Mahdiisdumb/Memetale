.localvar 0 arguments

:[0]
push.v self.image_alpha
pushi.e 1
cmp.i.v LT
bf [2]

:[1]
push.v self.image_alpha
push.d 0.2
add.d.v
pop.v.v self.image_alpha

:[2]
push.v self.image_angle
push.v self.ang
add.v.v
pop.v.v self.image_angle
push.v self.y
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 245
add.i.v
cmp.v.v GT
bf [4]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[4]
push.v self.x
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e 4
sub.i.v
cmp.v.v LT
bf [6]

:[5]
call.i instance_destroy(argc=0)
popz.v

:[6]
push.v self.x
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e 324
add.i.v
cmp.v.v GT
bf [end]

:[7]
call.i instance_destroy(argc=0)
popz.v

:[end]