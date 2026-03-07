.localvar 0 arguments

:[0]
pushi.e 8
pop.v.i self.num
pushi.e 1
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.active
pushi.e 10
pop.v.i self.r
pushi.e 110
pop.v.i self.maxr
pushi.e 360
conv.i.v
call.i random(argc=1)
pop.v.v self.siner
pushi.e 12
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[end]