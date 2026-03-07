.localvar 0 arguments

:[0]
push.v self.firing
pushi.e 1
add.i.v
pop.v.v self.firing
pushi.e 15
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
push.v self.firing
pushi.e 3
cmp.i.v GT
bf [end]

:[1]
pushi.e 0
pop.v.i self.firing
pushi.e 0
pop.v.i self.firetime
pushi.e 2
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm

:[end]