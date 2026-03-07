.localvar 0 arguments

:[0]
pushi.e 1
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
push.v self.xstart
pushi.e 2
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e 1
sub.i.v
pop.v.v self.x
push.v self.ystart
pushi.e 2
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e 1
sub.i.v
pop.v.v self.y

:[end]