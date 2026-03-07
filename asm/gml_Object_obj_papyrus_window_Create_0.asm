.localvar 0 arguments

:[0]
pushi.e -3
pop.v.i self.hspeed
pushi.e -2
pop.v.i self.vspeed
push.d 0.1
pop.v.d self.gravity
pushi.e 0
pop.v.i self.col
pushi.e 30
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[end]