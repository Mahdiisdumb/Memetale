.localvar 0 arguments

:[0]
pushi.e 2
pop.v.i self.talked
push.v self.p_con
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushi.e 2
pop.v.i global.mnfight

:[end]