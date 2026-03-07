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
pushi.e 6
conv.i.v
push.v 744.y
push.v 744.x
pushi.e 36
add.i.v
call.i move_towards_point(argc=3)
popz.v
push.d 0.16
pop.v.d self.gravity
pushi.e 180
pop.v.i self.gravity_direction

:[3]
push.v self.side
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
pushi.e 6
conv.i.v
push.v 744.y
pushi.e 36
add.i.v
push.v 744.x
pushi.e 15
add.i.v
call.i move_towards_point(argc=3)
popz.v
push.d 0.16
pop.v.d self.gravity
pushi.e 90
pop.v.i self.gravity_direction

:[5]
push.v self.side
pushi.e 2
cmp.i.v EQ
bf [7]

:[6]
pushi.e 6
conv.i.v
push.v 744.y
pushi.e 10
add.i.v
push.v 744.x
pushi.e 26
sub.i.v
call.i move_towards_point(argc=3)
popz.v
push.d 0.16
pop.v.d self.gravity
pushi.e 0
pop.v.i self.gravity_direction

:[7]
push.v self.side
pushi.e 3
cmp.i.v EQ
bf [9]

:[8]
pushi.e 6
conv.i.v
push.v 744.y
pushi.e 26
sub.i.v
push.v 744.x
call.i move_towards_point(argc=3)
popz.v
push.d 0.16
pop.v.d self.gravity
pushi.e 270
pop.v.i self.gravity_direction

:[9]
pushi.e 495
pop.v.i self.sprite_index

:[10]
pushi.e 1
pop.v.i self.active

:[end]