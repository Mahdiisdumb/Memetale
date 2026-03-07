.localvar 0 arguments

:[0]
pushi.e -1
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=2)
pushi.e 2
conv.i.v
call.i random(argc=1)
mul.v.v
pop.v.v self.hspeed
pushi.e 3
pop.v.i self.vspeed
pushi.e 1
pop.v.i self.sc

:[end]