.localvar 0 arguments

:[0]
pushi.e 440
pop.v.i self.idealy
push.v self.spot
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 140
pop.v.i self.idealx
pushi.e 10
pop.v.i self.idealx2

:[2]
push.v self.spot
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e 300
pop.v.i self.idealx
pushi.e 170
pop.v.i self.idealx2

:[4]
push.v self.spot
pushi.e 2
cmp.i.v EQ
bf [6]

:[5]
pushi.e 450
pop.v.i self.idealx
pushi.e 320
pop.v.i self.idealx2

:[6]
push.v self.spot
pushi.e 3
cmp.i.v EQ
bf [8]

:[7]
pushi.e 490
pop.v.i self.idealx2
pushi.e 620
pop.v.i self.idealx

:[8]
pushi.e 1
pop.v.i self.active

:[end]