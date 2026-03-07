.localvar 0 arguments

:[0]
pushglb.v global.phasing
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
pushi.e 4
pop.v.i global.interact
push.v global.facing
pushi.e 1
add.i.v
pop.v.v global.facing
pushi.e 822
pushenv [3]

:[2]
pushi.e 0
pop.v.i self.solid

:[3]
popenv [2]
pushi.e 1371
pushenv [5]

:[4]
pushi.e 0
pop.v.i self.solid

:[5]
popenv [4]
pushi.e 5
pop.v.i 1576.vspeed
push.d 0.5
pop.v.d 1576.image_alpha
pushglb.v global.facing
pushi.e 3
cmp.i.v GT
bf [7]

:[6]
pushi.e 0
pop.v.i global.facing

:[7]
pushi.e 4
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm

:[end]