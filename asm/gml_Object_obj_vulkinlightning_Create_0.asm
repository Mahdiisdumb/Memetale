.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.direction
pushi.e 1
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 1
pop.v.i self.speed
push.d -0.15
pop.v.d self.friction
pushglb.v global.firingrate
pushi.e 9
cmp.i.v GT
bf [2]

:[1]
push.d -0.1
pop.v.d self.friction

:[2]
pushglb.v global.firingrate
pushi.e 12
cmp.i.v GT
bf [4]

:[3]
push.d -0.07
pop.v.d self.friction

:[4]
pushi.e 7
pop.v.i self.dmg

:[end]