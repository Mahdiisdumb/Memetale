.localvar 0 arguments

:[0]
pushi.e 45
pop.v.i self.sdir
push.v self.x
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
cmp.v.v LT
bf [2]

:[1]
pushi.e 0
pop.v.i self.sdir

:[2]
push.v self.x
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
cmp.v.v GT
bf [4]

:[3]
pushi.e 180
pop.v.i self.sdir

:[4]
push.v self.y
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
cmp.v.v LT
bf [6]

:[5]
pushi.e 270
pop.v.i self.sdir

:[6]
push.v self.y
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
cmp.v.v GT
bf [8]

:[7]
pushi.e 90
pop.v.i self.sdir

:[8]
push.v self.sdir
ret.v

:[end]