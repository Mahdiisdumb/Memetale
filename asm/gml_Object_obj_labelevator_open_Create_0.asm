.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.xreveal
pushglb.v global.entrance
pushi.e 24
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i self.con
pushi.e 1
pop.v.i global.interact
pushi.e 120
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
b [end]

:[2]
pushi.e 4
pop.v.i self.con
pushi.e 20
pop.v.i self.xreveal

:[end]