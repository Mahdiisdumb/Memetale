.localvar 0 arguments

:[0]
pushi.e -1
pushi.e 0
push.v [array]self.alarm
pushi.e 30
cmp.i.v LT
bf [2]

:[1]
push.v self.image_alpha
push.d 0.1
sub.d.v
pop.v.v self.image_alpha

:[2]
push.v self.image_angle
pushi.e 8
add.i.v
pop.v.v self.image_angle

:[end]