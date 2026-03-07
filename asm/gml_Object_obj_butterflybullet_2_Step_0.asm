.localvar 0 arguments

:[0]
push.v self.vspeed
push.d -1.5
cmp.d.v LT
bf [2]

:[1]
push.v self.vspeed
push.d 0.15
add.d.v
pop.v.v self.vspeed

:[2]
push.v self.vspeed
pushi.e 8
conv.i.d
div.d.v
pop.v.v self.image_speed
push.v self.y
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 20
sub.i.v
cmp.v.v LT
bf [4]

:[3]
pushi.e 1
pop.v.i self.off

:[4]
push.v self.off
pushi.e 1
cmp.i.v EQ
bf [end]

:[5]
push.v self.image_alpha
push.d 0.05
sub.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
push.d 0.1
cmp.d.v LT
bf [end]

:[6]
call.i instance_destroy(argc=0)
popz.v

:[end]