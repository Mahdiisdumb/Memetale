.localvar 0 arguments

:[0]
push.v self.movetype
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushi.e 2
pop.v.i self.movetype

:[end]