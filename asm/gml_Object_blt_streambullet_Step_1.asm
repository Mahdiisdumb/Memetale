.localvar 0 arguments

:[0]
push.v self.dropdown
pushi.e 1
cmp.i.v EQ
bf [3]

:[1]
push.v self.x
push.v 744.x
pushi.e 4
sub.i.v
cmp.v.v GT
bf [3]

:[2]
push.v self.x
push.v 744.x
pushi.e 10
add.i.v
cmp.v.v LT
b [4]

:[3]
push.e 0

:[4]
bf [end]

:[5]
push.d 0.1
pop.v.d self.gravity
pushi.e 270
pop.v.i self.gravity_direction
pushi.e 0
pop.v.i self.hspeed
push.d 1.5
pop.v.d self.vspeed
pushi.e 0
pop.v.i self.dropdown
pushi.e 0
pop.v.i self.image_angle

:[end]