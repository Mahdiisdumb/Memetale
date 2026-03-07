.localvar 0 arguments

:[0]
push.v self.big
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 2
pop.v.i self.aa
pushi.e 8
pop.v.i self.speed
pushi.e -28
pop.v.i self.counter

:[end]