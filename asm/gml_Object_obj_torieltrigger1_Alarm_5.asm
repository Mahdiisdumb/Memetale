.localvar 0 arguments

:[0]
call.i path_end(argc=0)
popz.v
pushi.e 270
pop.v.i 863.direction
pushi.e 203
pop.v.i global.msc
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 3
pop.v.i self.conversation

:[end]