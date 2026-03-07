.localvar 0 arguments

:[0]
pushi.e 12
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pop.v.v self.dd
pushi.e 8
conv.i.v
pushi.e 4
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=4)
pop.v.v self.bb
pushi.e 16
conv.i.v
pushi.e 10
conv.i.v
pushi.e 8
conv.i.v
pushi.e 6
conv.i.v
pushi.e 4
conv.i.v
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=8)
pop.v.v self.cc
pushi.e 1
pop.v.i self.on
pushi.e 60
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[end]