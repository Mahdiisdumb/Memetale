.localvar 0 arguments

:[0]
push.v self.image_angle
pushi.e 10
add.i.v
pop.v.v self.image_angle
push.v self.image_alpha
pushi.e 1
cmp.i.v LT
bf [2]

:[1]
push.v self.image_alpha
push.d 0.1
add.d.v
pop.v.v self.image_alpha

:[2]
push.v self.y
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
cmp.v.v GT
bf [4]

:[3]
push.v self.vspeed
pushi.e 0
cmp.i.v GT
b [5]

:[4]
push.e 0

:[5]
bf [8]

:[6]
push.v self.image_alpha
push.d 0.2
sub.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
push.d 0.1
cmp.d.v LT
bf [8]

:[7]
call.i instance_destroy(argc=0)
popz.v

:[8]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 740
conv.i.v
push.v self.y
pushi.e 10
add.i.v
push.v self.x
pushi.e 10
add.i.v
push.v self.y
pushi.e 10
sub.i.v
push.v self.x
pushi.e 10
sub.i.v
call.i collision_rectangle(argc=7)
conv.v.b
bf [end]

:[9]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[end]