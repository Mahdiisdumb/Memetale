.localvar 0 arguments

:[0]
pushi.e 80
pushi.e 200
conv.i.v
call.i random(argc=1)
add.v.i
pushi.e -1
pushi.e 8
pop.v.v [array]self.alarm
pushi.e 0
pop.v.i self.shsh

:[end]