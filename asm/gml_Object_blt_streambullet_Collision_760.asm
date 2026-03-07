.localvar 0 arguments

:[0]
push.v self.vspeed
pushi.e 0
cmp.i.v LT
bf [end]

:[1]
pushi.e 270
pop.v.i self.image_angle
push.v self.rbord
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
push.v self.y
pushi.e 6
add.i.v
pop.v.v self.y
push.v self.x
pushi.e 6
add.i.v
pop.v.v self.x
b [4]

:[3]
push.v self.y
pushi.e 2
add.i.v
pop.v.v self.y
push.v self.x
pushi.e 2
sub.i.v
pop.v.v self.x

:[4]
push.v 744.x
push.v self.x
cmp.v.v GT
bf [6]

:[5]
push.v self.vspeed
neg.v
pop.v.v self.hspeed
pushi.e 0
pop.v.i self.vspeed
pushi.e 0
pop.v.i self.gravity_direction

:[6]
push.v 744.x
push.v self.x
cmp.v.v LT
bf [8]

:[7]
push.v self.vspeed
pop.v.v self.hspeed
pushi.e 0
pop.v.i self.vspeed
pushi.e 180
pop.v.i self.gravity_direction

:[8]
pushi.e 1
pop.v.i self.dropdown

:[end]