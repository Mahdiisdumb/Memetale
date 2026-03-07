.localvar 0 arguments

:[0]
push.v self.image_angle
pushi.e 45
add.i.v
pop.v.v self.image_angle
push.v self.rotspeed
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[end]