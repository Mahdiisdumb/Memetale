.localvar 0 arguments

:[0]
pushglb.v global.phasing
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushi.e 6
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 1
pop.v.i self.image_index

:[end]