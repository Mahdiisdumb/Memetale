.localvar 0 arguments

:[0]
push.v self.direction
pushi.e 12
add.i.v
pop.v.v self.direction
pushi.e 612
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
popz.v

:[end]