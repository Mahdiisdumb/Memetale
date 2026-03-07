.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.splash
pushi.e 0
pop.v.i self.grey
pushglb.v global.plot
pushi.e 167
cmp.i.v GT
bf [end]

:[1]
pushi.e 1
pop.v.i self.grey

:[end]