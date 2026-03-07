.localvar 0 arguments

:[0]
pushglb.v global.debug
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
push.d 17.5
pop.v.d self.con2
pushi.e 180
pop.v.i self.hp

:[end]