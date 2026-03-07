.localvar 0 arguments

:[0]
pushi.e 1
pop.v.i self.movetype
pushi.e 400
pop.v.i self.lightning_timer
pushi.e 0
pop.v.i self.visible
push.v self.lastcon
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i self.lastcon

:[2]
pushi.e 900
pop.v.i global.turntimer

:[end]