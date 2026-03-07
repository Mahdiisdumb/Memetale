.localvar 0 arguments

:[0]
push.v self.image_angle
push.v self.aa
add.v.v
pop.v.v self.image_angle
push.v self.h_mode
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
push.v self.direction
push.d 1.5
add.d.v
pop.v.v self.direction

:[end]