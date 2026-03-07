.localvar 0 arguments

:[0]
pushi.e 2
pop.v.i self.vspeed
push.d -0.2
pop.v.d self.friction
push.v self.sum
pushi.e 1
cmp.i.v GT
bf [2]

:[1]
pushi.e -2
pop.v.i self.vspeed

:[2]
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[end]