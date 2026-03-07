.localvar 0 arguments

:[0]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
pushi.e 583
conv.i.v
pushi.e -150
pushi.e 100
conv.i.v
call.i random(argc=1)
sub.v.i
pushi.e 580
pushi.e 700
conv.i.v
call.i random(argc=1)
add.v.i
call.i instance_create(argc=3)
pop.v.v self.st
push.v self.h_mode
push.v self.st
conv.v.i
pop.v.v [stacktop]self.h_mode
pushi.e 8
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[end]