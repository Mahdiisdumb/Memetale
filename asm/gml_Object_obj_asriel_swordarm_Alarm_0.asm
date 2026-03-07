.localvar 0 arguments

:[0]
pushi.e 1
pop.v.i self.visible
push.v self.flip
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e -2
pop.v.i self.image_xscale
b [end]

:[2]
pushi.e 2
pop.v.i self.image_xscale

:[end]