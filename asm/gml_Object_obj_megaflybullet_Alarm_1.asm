.localvar 0 arguments

:[0]
pushi.e 5
conv.i.v
push.v 744.y
pushi.e 4
sub.i.v
push.v 744.x
pushi.e 4
sub.i.v
call.i move_towards_point(argc=3)
popz.v
pushi.e 90
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.sineron

:[end]