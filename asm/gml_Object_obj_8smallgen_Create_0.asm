.localvar 0 arguments

:[0]
pushi.e 8
pop.v.i self.dmg
pushi.e 2
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.i
pushglb.v global.firingrate
pop.v.v self.rate

:[end]