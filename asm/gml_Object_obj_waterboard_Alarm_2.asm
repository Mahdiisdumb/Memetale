.localvar 0 arguments

:[0]
pushi.e 7
pop.v.i self.using
pushi.e 20
conv.i.v
pushi.e 20
conv.i.v
call.i move_snap(argc=2)
popz.v
pushi.e 822
conv.i.v
push.v self.y
pushi.e 10
add.i.v
push.v self.x
pushi.e 10
add.i.v
call.i instance_position(argc=3)
pop.v.v self.block
push.v self.block
pushi.e -4
cmp.i.v NEQ
bf [6]

:[1]
pushi.e 1113
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [5]

:[2]
push.v self.block
pop.v.v 1113.block2
pushi.e 1113
pushenv [4]

:[3]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[4]
popenv [3]

:[5]
pushi.e 0
push.v self.block
conv.v.i
pop.v.i [stacktop]self.x
pushi.e 0
push.v self.block
conv.v.i
pop.v.i [stacktop]self.y

:[6]
pushi.e 99
pop.v.i self.using
pushi.e 0
pop.v.i self.image_speed
pushi.e 6
pop.v.i self.image_index
push.i 800000
pop.v.i self.depth

:[end]