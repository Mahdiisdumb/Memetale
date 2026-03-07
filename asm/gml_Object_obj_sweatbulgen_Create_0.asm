.localvar 0 arguments

:[0]
pushi.e 7
pop.v.i self.dmg
pushglb.v global.firingrate
pop.v.v self.rate
push.v self.rate
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[end]