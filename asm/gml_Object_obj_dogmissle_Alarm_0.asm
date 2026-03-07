.localvar 0 arguments

:[0]
push.d -0.22
push.d 0.1
conv.d.v
call.i random(argc=1)
add.v.d
pop.v.v self.friction
pushi.e 2
conv.i.v
push.v 744.y
pushi.e 8
add.i.v
push.v 744.x
pushi.e 8
add.i.v
call.i move_towards_point(argc=3)
popz.v
push.v self.direction
pushi.e 30
conv.i.v
call.i random(argc=1)
pushi.e 30
conv.i.v
call.i random(argc=1)
sub.v.v
add.v.v
pop.v.v self.direction
pushi.e 0
pop.v.i self.anchor
push.v 545.y
pushi.e 20
add.i.v
pop.v.v self.y
push.v self.x
pushi.e 9
sub.i.v
pop.v.v self.x

:[end]