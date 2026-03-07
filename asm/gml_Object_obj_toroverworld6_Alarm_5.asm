.localvar 0 arguments

:[0]
push.v 1576.y
push.v self.x
pushi.e 40
sub.i.v
cmp.v.v LT
bf [end]

:[1]
pushi.e 0
pop.v.i self.path_speed
pushi.e 180
pop.v.i self.direction
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.t

:[end]