.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.dmg
pushi.e 3
conv.i.v
push.v 744.y
push.v 744.x
call.i move_towards_point(argc=3)
popz.v

:[end]