.localvar 0 arguments

:[0]
pushi.e 1174
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
push.v 1174.x
pushi.e 7
add.i.v
pop.v.v self.x
push.v 1174.y
pushi.e 12
sub.i.v
pop.v.v self.y
push.v 1174.depth
pushi.e 1
sub.i.v
pop.v.v self.depth

:[2]
pushi.e 1175
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[3]
push.v 1175.x
pushi.e 7
add.i.v
pop.v.v self.x
push.v 1175.y
pushi.e 12
sub.i.v
pop.v.v self.y
push.v 1175.depth
pushi.e 1
sub.i.v
pop.v.v self.depth

:[end]