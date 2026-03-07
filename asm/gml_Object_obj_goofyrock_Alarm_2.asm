.localvar 0 arguments

:[0]
pushi.e 1576
pushenv [2]

:[1]
pushi.e 0
pop.v.i self.uncan

:[2]
popenv [1]
pushi.e 0
pop.v.i 1576.speed
push.v 1576.x
push.v self.x
pushi.e 15
add.i.v
cmp.v.v GT
bf [end]

:[3]
pushi.e 1
pop.v.i 1576.hspeed

:[end]