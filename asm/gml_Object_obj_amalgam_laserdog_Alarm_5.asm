.localvar 0 arguments

:[0]
pushi.e 3
pushi.e 4
conv.i.v
call.i random(argc=1)
pushi.e -1
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=2)
mul.v.v
add.v.i
pop.v.v self.vspeed
pushi.e 15
pushi.e 20
conv.i.v
call.i random(argc=1)
add.v.i
pushi.e -1
pushi.e 5
pop.v.v [array]self.alarm

:[end]