.localvar 0 arguments

:[0]
push.v self.x
pushi.e 1
sub.i.v
pop.v.v self.x
push.v self.y
pushi.e 1
sub.i.v
pop.v.v self.y
push.v self.x
pushi.e 2
conv.i.v
call.i random(argc=1)
add.v.v
pop.v.v self.x
push.v self.y
pushi.e 2
conv.i.v
call.i random(argc=1)
add.v.v
pop.v.v self.y

:[end]