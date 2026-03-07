.localvar 0 arguments

:[0]
pushglb.v global.debug
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
pushi.e 16
pop.v.i self.conversation
pushi.e 0
pop.v.i self.hspeed

:[end]