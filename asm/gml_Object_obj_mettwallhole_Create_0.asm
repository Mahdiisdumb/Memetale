.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.myinteract
pushglb.v global.plot
pushi.e 126
cmp.i.v LT
bf [2]

:[1]
pushi.e 0
pop.v.i self.visible

:[2]
call.i scr_murderlv(argc=0)
pushi.e 12
cmp.i.v GTE
bf [end]

:[3]
pushi.e 1
pop.v.i self.visible

:[end]