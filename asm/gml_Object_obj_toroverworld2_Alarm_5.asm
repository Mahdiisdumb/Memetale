.localvar 0 arguments

:[0]
push.v 1576.y
push.v self.y
pushi.e 80
add.i.v
cmp.v.v GT
bf [end]

:[1]
pushi.e 0
pop.v.i self.path_speed
pushi.e 270
pop.v.i self.direction
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.t

:[end]