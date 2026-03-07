.localvar 0 arguments

:[0]
pushi.e 2
pop.v.i self.shsh
pushi.e 5
pushi.e 8
conv.i.v
call.i random(argc=1)
add.v.i
pushi.e -1
pushi.e 9
pop.v.v [array]self.alarm

:[end]