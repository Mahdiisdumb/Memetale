.localvar 0 arguments

:[0]
pushi.e 13
pushi.e -1
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=2)
mul.v.i
pop.v.v self.hspeed
pushi.e 13
pushi.e -1
conv.i.v
call.i choose(argc=1)
mul.v.i
pop.v.v self.vspeed

:[end]