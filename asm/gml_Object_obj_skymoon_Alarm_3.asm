.localvar 0 arguments

:[0]
push.v self.sum
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
pushi.e 375
conv.i.v
pushi.e 200
pushi.e 200
conv.i.v
call.i random(argc=1)
sub.v.i
pushi.e 200
pushi.e 200
conv.i.v
call.i random(argc=1)
sub.v.i
call.i instance_create(argc=3)
pop.v.v self.aimbullet
push.v self.aimbullet
conv.v.i
pushenv [3]

:[2]
push.v 744.y
push.v 744.x
push.v self.y
push.v self.x
call.i point_direction(argc=4)
pop.v.v self.direction

:[3]
popenv [2]
pushi.e 30
pushi.e -1
pushi.e 3
pop.v.i [array]self.alarm

:[end]