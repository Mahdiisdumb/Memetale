.localvar 0 arguments

:[0]
push.v self.active
pushi.e 0
cmp.i.v EQ
bf [10]

:[1]
push.v self.side
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
push.d 5.5
conv.d.v
push.v 744.y
push.v 744.x
pushi.e 15
add.i.v
call.i move_towards_point(argc=3)
popz.v
push.d 0.12
pop.v.d self.gravity
pushi.e 180
pop.v.i self.gravity_direction

:[3]
push.v self.side
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
push.d 5.5
conv.d.v
push.v 744.y
pushi.e 15
add.i.v
push.v 744.x
call.i move_towards_point(argc=3)
popz.v
push.d 0.12
pop.v.d self.gravity
pushi.e 90
pop.v.i self.gravity_direction

:[5]
push.v self.side
pushi.e 2
cmp.i.v EQ
bf [7]

:[6]
push.d 5.5
conv.d.v
push.v 744.y
pushi.e 15
sub.i.v
push.v 744.x
call.i move_towards_point(argc=3)
popz.v
push.d 0.12
pop.v.d self.gravity
pushi.e 0
pop.v.i self.gravity_direction

:[7]
push.v self.side
pushi.e 3
cmp.i.v EQ
bf [9]

:[8]
push.d 5.5
conv.d.v
push.v 744.y
push.v 744.x
pushi.e 15
sub.i.v
call.i move_towards_point(argc=3)
popz.v
push.d 0.12
pop.v.d self.gravity
pushi.e 0
pop.v.i self.gravity_direction

:[9]
pushi.e 495
pop.v.i self.sprite_index

:[10]
pushi.e 1
pop.v.i self.active

:[end]