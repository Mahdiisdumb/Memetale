.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.image_speed
pushi.e -5
pushi.e 103
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [end]

:[1]
pushi.e 1
pop.v.i self.image_index

:[end]