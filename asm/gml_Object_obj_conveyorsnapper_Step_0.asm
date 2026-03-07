.localvar 0 arguments

:[0]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i global.interact

:[2]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [end]

:[3]
pushi.e 0
pop.v.i global.phasing
pushi.e 0
pop.v.i 1576.vspeed
pushi.e 0
pop.v.i global.interact
pushi.e 1
pop.v.i 1576.image_alpha
pushi.e 3
pop.v.i self.con

:[end]