.localvar 0 arguments

:[0]
push.v self.image_xscale
pushi.e 15
cmp.i.v GTE
bf [2]

:[1]
pushi.e 2
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm

:[2]
push.v self.image_xscale
pushi.e 15
cmp.i.v LT
bf [end]

:[3]
push.v self.image_xscale
pushi.e 1
add.i.v
pop.v.v self.image_xscale
pushi.e 2
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[end]