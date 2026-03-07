.localvar 0 arguments

:[0]
pushi.e 30
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 45
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
pushi.e 3
conv.i.v
push.v 744.y
pushi.e 2
add.i.v
push.v 744.x
pushi.e 2
add.i.v
call.i move_towards_point(argc=3)
popz.v

:[end]