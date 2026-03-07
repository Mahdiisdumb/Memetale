.localvar 0 arguments

:[0]
push.v self.diff
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 0
pop.v.i self.laserno
pushi.e 5
pop.v.i self.maxlaser
pushi.e 1
pushi.e -1
pushi.e 0
pop.v.i [array]self.laser
pushi.e 1
pushi.e -1
pushi.e 1
pop.v.i [array]self.laser
pushi.e 2
pushi.e -1
pushi.e 2
pop.v.i [array]self.laser
pushi.e 1
pushi.e -1
pushi.e 3
pop.v.i [array]self.laser
pushi.e 1
pushi.e -1
pushi.e 4
pop.v.i [array]self.laser
pushi.e 72
pop.v.i self.laserdist
pushi.e 2
pop.v.i self.rotspeed
pushi.e 80
pop.v.i self.rottimer
pushi.e 20
pop.v.i self.rot

:[2]
push.v self.diff
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e 0
pop.v.i self.laserno
pushi.e 5
pop.v.i self.maxlaser
pushi.e 1
pushi.e -1
pushi.e 0
pop.v.i [array]self.laser
pushi.e 1
pushi.e -1
pushi.e 1
pop.v.i [array]self.laser
pushi.e 1
pushi.e -1
pushi.e 2
pop.v.i [array]self.laser
pushi.e 2
pushi.e -1
pushi.e 3
pop.v.i [array]self.laser
pushi.e 1
pushi.e -1
pushi.e 4
pop.v.i [array]self.laser
pushi.e 72
pop.v.i self.laserdist
pushi.e 4
pop.v.i self.rotspeed
pushi.e 0
pop.v.i self.rot

:[4]
push.v self.diff
pushi.e 2
cmp.i.v EQ
bf [6]

:[5]
pushi.e 0
pop.v.i self.laserno
pushi.e 4
pop.v.i self.maxlaser
pushi.e 1
pushi.e -1
pushi.e 0
pop.v.i [array]self.laser
pushi.e 1
pushi.e -1
pushi.e 1
pop.v.i [array]self.laser
pushi.e 2
pushi.e -1
pushi.e 2
pop.v.i [array]self.laser
pushi.e 1
pushi.e -1
pushi.e 3
pop.v.i [array]self.laser
pushi.e 1
pushi.e -1
pushi.e 4
pop.v.i [array]self.laser
pushi.e 90
pop.v.i self.laserdist
push.d 4.75
pop.v.d self.rotspeed
pushi.e 0
pop.v.i self.rot

:[6]
pushi.e 1
pop.v.i self.active

:[end]