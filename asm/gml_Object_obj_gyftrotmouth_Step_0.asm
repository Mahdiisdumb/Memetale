.localvar 0 arguments

:[0]
pushi.e 237
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[1]
push.v 237.x
pushi.e 50
add.i.v
pop.v.v self.x
push.v 237.y
pushi.e 96
add.i.v
pop.v.v self.y

:[end]