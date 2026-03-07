.localvar 0 arguments

:[0]
push.d 0.2
push.d 0.2
conv.d.v
call.i random(argc=1)
add.v.d
pop.v.v self.gravity
pushi.e 2
conv.i.v
call.i random(argc=1)
pop.v.v self.hspeed
push.v self.x
pushi.e 100
cmp.i.v GT
bf [2]

:[1]
push.v self.hspeed
pushi.e 1
sub.i.v
pop.v.v self.hspeed

:[2]
pushi.e 3
pushi.e 6
conv.i.v
call.i random(argc=1)
sub.v.i
pop.v.v self.ang
pushi.e 130
pushi.e 20
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.maxy

:[end]