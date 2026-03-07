.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.myinteract
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.heartx
pushi.e 0
pop.v.i self.hearty
pushi.e 0
pop.v.i self.trigger
pushglb.v global.plot
pushi.e 160
cmp.i.v GT
bf [2]

:[1]
pushi.e 1
pop.v.i self.trigger

:[2]
pushglb.v global.plot
pushi.e 167
cmp.i.v GT
bf [4]

:[3]
pushi.e 2
pop.v.i self.trigger

:[4]
pushi.e 0
pop.v.i self.dirdir
pushi.e 0
pop.v.i self.ourx
pushi.e 0
pop.v.i self.oury
pushi.e 0
pop.v.i self.rectaur
pushi.e 0
pop.v.i self.rect
pushi.e 1
pop.v.i 1576.cutscene

:[end]