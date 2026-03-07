.localvar 0 arguments

:[0]
pushi.e 155
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[1]
push.v 155.depth
pop.v.v self.depth

:[end]