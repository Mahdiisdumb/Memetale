.localvar 0 arguments

:[0]
pushi.e 616
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [6]

:[1]
push.v 616.path_position
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
push.v self.goof
pushi.e 0
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
push.d 0.6
conv.d.v
push.v 744.y
pushi.e 2
add.i.v
push.v 744.x
pushi.e 2
add.i.v
call.i move_towards_point(argc=3)
popz.v
pushi.e 1
pop.v.i self.goof
push.d -0.1
pop.v.d self.friction

:[6]
push.v self.y
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 4
add.i.v
cmp.v.v GT
bf [end]

:[7]
call.i instance_destroy(argc=0)
popz.v

:[end]