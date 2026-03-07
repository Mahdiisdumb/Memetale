.localvar 0 arguments

:[0]
pushi.e 430
conv.i.v
push.v self.y
pushi.e 12
add.i.v
pushi.e 8
conv.i.v
call.i random(argc=1)
add.v.v
push.v self.x
pushi.e 6
add.i.v
pushi.e 20
conv.i.v
call.i random(argc=1)
add.v.v
call.i instance_create(argc=3)
popz.v
pushi.e 3
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[end]