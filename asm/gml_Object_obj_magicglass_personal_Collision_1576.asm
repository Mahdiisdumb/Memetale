.localvar 0 arguments

:[0]
pushglb.v global.phasing
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
pushi.e 3
pop.v.i self.ar
push.v self.image_alpha
pushi.e 1
cmp.i.v LT
bf [end]

:[5]
push.v self.image_alpha
push.d 0.2
add.d.v
pop.v.v self.image_alpha

:[end]