.localvar 0 arguments

:[0]
pushi.e 1086
conv.i.v
push.v self.y
pushi.e 32
add.i.v
push.v self.x
pushi.e 10
add.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 6
pushi.e -1
pushi.e 3
pop.v.i [array]self.alarm

:[end]