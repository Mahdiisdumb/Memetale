.localvar 0 arguments

:[0]
push.v self.image_angle
push.v self.speed
add.v.v
pop.v.v self.image_angle
push.v self.speed
push.d 0.2
cmp.d.v LT
bf [end]

:[1]
pushi.e 0
pop.v.i self.gravity

:[end]