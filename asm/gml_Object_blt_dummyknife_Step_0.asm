.localvar 0 arguments

:[0]
push.v self.image_alpha
pushi.e 1
cmp.i.v LT
bf [2]

:[1]
push.v self.image_alpha
push.d 0.12
add.d.v
pop.v.v self.image_alpha
push.v self.direction
push.v self.increase
add.v.v
pop.v.v self.direction
push.v self.increase
pushi.e 2
sub.i.v
pop.v.v self.increase
b [3]

:[2]
pushi.e 1
pop.v.i self.image_alpha

:[3]
push.v self.direction
pop.v.v self.image_angle

:[end]