.localvar 0 arguments

:[0]
push.d 0.2
pop.v.d self.size
push.d 1.5
conv.d.v
push.v 1587.y
pushi.e 8
add.i.v
push.v 1587.x
pushi.e 8
add.i.v
call.i move_towards_point(argc=3)
popz.v

:[end]