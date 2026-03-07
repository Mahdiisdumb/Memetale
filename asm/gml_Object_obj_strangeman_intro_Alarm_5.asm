.localvar 0 arguments

:[0]
pushi.e 538
conv.i.v
call.i instance_number(argc=1)
pushi.e 40
cmp.i.v LT
bf [2]

:[1]
pushi.e 538
conv.i.v
push.v self.y
pushi.e 50
sub.i.v
pushi.e 40
conv.i.v
call.i random(argc=1)
sub.v.v
push.v self.x
pushi.e 30
sub.i.v
pushi.e 60
conv.i.v
call.i random(argc=1)
add.v.v
call.i instance_create(argc=3)
popz.v

:[2]
pushi.e 3
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[end]