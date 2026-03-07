.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.firetime
pushi.e 2
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 2
pop.v.i self.firing
pushi.e 1
pop.v.i self.dmg
pushi.e 0
pop.v.i self.siner
pushglb.v global.sp
pop.v.v self.mysp
pushglb.v global.firingrate
pop.v.v self.rate

:[end]