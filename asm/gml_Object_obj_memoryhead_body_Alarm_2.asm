.localvar 0 arguments

:[0]
pushi.e 90
pushi.e 30
conv.i.v
call.i random(argc=1)
add.v.i
pushi.e -1
pushi.e 1
pop.v.v [array]self.alarm
pushi.e 0
pop.v.i self.on

:[end]