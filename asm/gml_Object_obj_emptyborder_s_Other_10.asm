.localvar 0 arguments

:[0]
push.v self.idealx
pushi.e 1
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e 1
conv.i.v
call.i random(argc=1)
sub.v.v
pop.v.v self.x
push.v self.idealy
pushi.e 1
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e 1
conv.i.v
call.i random(argc=1)
sub.v.v
pop.v.v self.y

:[end]