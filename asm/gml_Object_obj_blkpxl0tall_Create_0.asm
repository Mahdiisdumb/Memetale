.localvar 0 arguments

:[0]
pushi.e 192
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.dt
push.v self.y
push.v self.x
pushi.e 192
conv.i.v
call.i action_create_object(argc=3)
popz.v
push.v self.y
pushi.e 2
add.i.v
push.v self.x
pushi.e 192
conv.i.v
call.i action_create_object(argc=3)
popz.v

:[end]