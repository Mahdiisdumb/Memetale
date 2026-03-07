.localvar 0 arguments

:[0]
pushi.e 1
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.side
pushi.e 0
pop.v.i self.s
pushi.e 0
pop.v.i self.off
pushi.e 0
pop.v.i self.hitside
pushi.e 30
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
pushi.e 360
conv.i.v
call.i random(argc=1)
pop.v.v self.s

:[end]