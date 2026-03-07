.localvar 0 arguments

:[0]
pushi.e 1
pop.v.i 1103.glow
pushi.e 1
pop.v.i 1103.image_index
pushi.e 0
pop.v.i self.solvent
pushi.e -5
pushi.e 270
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i self.solvent

:[2]
pushglb.v global.plot
pushi.e 117
cmp.i.v GT
bf [4]

:[3]
pushi.e 1
pop.v.i self.solvent

:[4]
push.v self.solvent
pushi.e 1
cmp.i.v EQ
bf [6]

:[5]
pushi.e 0
pop.v.i 1103.glow
pushi.e 0
pop.v.i 1103.image_index

:[6]
pushi.e 0
pop.v.i self.glowtotal

:[end]