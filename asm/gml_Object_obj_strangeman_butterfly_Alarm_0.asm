.localvar 0 arguments

:[0]
push.v self.king
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
pushi.e 1
pushi.e 2
conv.i.v
call.i random(argc=1)
add.v.i
push.v self.king
conv.v.i
push.v [stacktop]self.y
push.v self.king
conv.v.i
push.v [stacktop]self.x
call.i move_towards_point(argc=3)
popz.v
push.v self.direction
pushi.e 20
conv.i.v
call.i random(argc=1)
pushi.e 20
conv.i.v
call.i random(argc=1)
sub.v.v
add.v.v
pop.v.v self.direction
pushi.e 15
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
b [end]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[end]