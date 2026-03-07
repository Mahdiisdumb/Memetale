.localvar 0 arguments

:[0]
push.v self.myinteract
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushglb.v global.plot
pushi.e 4
cmp.i.v LTE
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 1
pop.v.i self.on
pushi.e 0
pop.v.i self.myinteract
pushi.e 1
pop.v.i self.image_index
push.d 4.5
pop.v.d global.plot

:[5]
push.v self.on
pop.v.v self.image_index

:[end]