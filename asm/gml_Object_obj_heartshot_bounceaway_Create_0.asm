.localvar 0 arguments

:[0]
pushi.e 240
pushi.e 40
conv.i.v
call.i random(argc=1)
sub.v.i
pushi.e 300
pushi.e 40
conv.i.v
call.i random(argc=1)
add.v.i
call.i choose(argc=2)
pop.v.v self.direction
pushi.e 18
pop.v.i self.speed
pushi.e 3
pushi.e 6
conv.i.v
call.i random(argc=1)
pushi.e -1
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=2)
mul.v.v
add.v.i
pop.v.v self.aspeed

:[end]