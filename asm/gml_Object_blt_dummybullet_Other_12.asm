.localvar 0 arguments

:[0]
push.v self.side
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 180
pop.v.i self.direction

:[2]
push.v self.side
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e 0
pop.v.i self.direction

:[4]
push.v self.side
pushi.e 2
cmp.i.v EQ
bf [6]

:[5]
pushi.e 90
pop.v.i self.direction

:[6]
push.v self.side
pushi.e 3
cmp.i.v EQ
bf [8]

:[7]
pushi.e 270
pop.v.i self.direction

:[8]
pushi.e 90
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[end]