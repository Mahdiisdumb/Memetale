.localvar 0 arguments

:[0]
push.d 0.2
pop.v.d self.image_speed
pushi.e 3
conv.i.v
push.v 744.y
pushi.e 2
sub.i.v
push.v 744.x
pushi.e 2
sub.i.v
call.i move_towards_point(argc=3)
popz.v
pushi.e 8
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 24
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.siner
pushi.e 80
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm
pushi.e 1
pop.v.i self.sineron

:[end]