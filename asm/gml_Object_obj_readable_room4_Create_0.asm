.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.myinteract
pushi.e 1
pop.v.i self.image_xscale
pushbltn.v self.room
pushi.e 252
cmp.i.v EQ
bf [2]

:[1]
pushi.e 20
pop.v.i self.image_xscale

:[2]
pushi.e 1
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.read

:[end]