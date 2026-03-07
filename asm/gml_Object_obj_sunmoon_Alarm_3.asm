.localvar 0 arguments

:[0]
push.v self.sum
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
pushi.e 373
conv.i.v
push.v self.y
pushi.e 14
add.i.v
push.v self.x
pushi.e 14
add.i.v
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