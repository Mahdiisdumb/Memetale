.localvar 0 arguments

:[0]
pushglb.v global.debug
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
pushi.e 1
pop.v.i self.truefight
pushi.e 1
pop.v.i self.conversation
pushi.e 6
pop.v.i self.fighto
pushi.e 0
pop.v.i self.xfight

:[end]