.localvar 0 arguments

:[0]
push.v self.path_position
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
push.v self.object_index
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[end]