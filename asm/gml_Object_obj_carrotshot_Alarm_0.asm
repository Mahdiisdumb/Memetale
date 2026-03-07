.localvar 0 arguments

:[0]
push.v self.hspeed
pushi.e 2
conv.i.v
call.i random(argc=1)
pushi.e 2
add.i.v
pushi.e 1
conv.i.v
pushi.e -1
conv.i.v
call.i choose(argc=2)
mul.v.v
add.v.v
pop.v.v self.hspeed

:[end]