.localvar 0 arguments

:[0]
pushi.e 3
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.dmg
pushi.e 19
pop.v.i global.border
call.i SCR_BORDERSETUP(argc=0)
popz.v
pushglb.v global.firingrate
pop.v.v self.rate

:[end]