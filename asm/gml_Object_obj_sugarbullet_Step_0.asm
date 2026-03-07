.localvar 0 arguments

:[0]
push.v self.vspeed
pushi.e 0
cmp.i.v GT
bf [2]

:[1]
pushi.e 2
pop.v.i self.depth

:[2]
push.v self.size
pushi.e 1
cmp.i.v LT
bf [4]

:[3]
push.v self.size
push.d 0.04
add.d.v
pop.v.v self.size

:[4]
push.v self.size
pop.v.v self.image_xscale
push.v self.size
pop.v.v self.image_yscale
push.v self.image_angle
push.v self.ang
add.v.v
pop.v.v self.image_angle
push.v self.y
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 250
add.i.v
cmp.v.v GT
bf [6]

:[5]
call.i instance_destroy(argc=0)
popz.v

:[6]
push.v self.x
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e 10
sub.i.v
cmp.v.v LT
bf [8]

:[7]
call.i instance_destroy(argc=0)
popz.v

:[8]
push.v self.x
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e 320
add.i.v
cmp.v.v GT
bf [end]

:[9]
call.i instance_destroy(argc=0)
popz.v

:[end]