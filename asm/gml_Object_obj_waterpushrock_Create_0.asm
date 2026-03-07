.localvar 0 arguments

:[0]
pushi.e 8
pop.v.i self.vspeed
pushi.e 1
pop.v.i self.active
pushi.e 0
pop.v.i self.speeded
pushi.e 0
pop.v.i self.colliding
pushi.e 1
pop.v.i self.phase
pushbltn.v self.room
pushi.e 84
cmp.i.v EQ
bf [2]

:[1]
pushi.e 60
pop.v.i self.topy
pushi.e 180
pop.v.i self.bottomy
pushi.e 350
pop.v.i self.destroyy

:[2]
pushbltn.v self.room
pushi.e 91
cmp.i.v EQ
bf [end]

:[3]
pushi.e 110
pop.v.i self.topy
pushi.e 180
pop.v.i self.bottomy
pushi.e 350
pop.v.i self.destroyy

:[end]