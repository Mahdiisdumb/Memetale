.localvar 0 arguments

:[0]
pushi.e 7
pushi.e 3
conv.i.v
call.i random(argc=1)
add.v.i
push.v 744.y
pushi.e 20
sub.i.v
push.v 744.x
pushi.e 25
sub.i.v
call.i move_towards_point(argc=3)
popz.v
pushi.e 20
pushi.e 10
conv.i.v
call.i random(argc=1)
add.v.i
pushi.e -1
pushi.e 5
pop.v.v [array]self.alarm
pushi.e 14
pushi.e 5
conv.i.v
call.i random(argc=1)
add.v.i
pushi.e -1
pushi.e 6
pop.v.v [array]self.alarm
pushi.e 0
pop.v.i self.shake

:[end]