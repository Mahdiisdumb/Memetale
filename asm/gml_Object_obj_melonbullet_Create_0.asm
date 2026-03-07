.localvar 0 arguments

:[0]
pushi.e 1
pop.v.i self.size
pushi.e 1
conv.i.v
push.v 744.y
pushi.e 8
add.i.v
push.v 744.x
pushi.e 8
add.i.v
call.i move_towards_point(argc=3)
popz.v
push.d -0.3
pop.v.d self.friction
pushi.e 8
pop.v.i self.dmg

:[end]