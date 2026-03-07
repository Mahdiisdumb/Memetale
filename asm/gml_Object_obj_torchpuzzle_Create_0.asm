.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.h
pushi.e 0
pop.v.i self.solved
pushbltn.v self.room
pushi.e 91
cmp.i.v EQ
bf [end]

:[1]
pushglb.v global.plot
pushi.e 108
cmp.i.v GT
bf [end]

:[2]
pushi.e 1
pop.v.i self.solved
pushi.e 14
pushenv [4]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[4]
popenv [3]
pushi.e 0
pop.v.i self.i

:[5]
push.v self.i
pushi.e 12
cmp.i.v LT
bf [7]

:[6]
pushi.e 1098
conv.i.v
pushi.e 100
conv.i.v
pushi.e 440
push.v self.i
pushi.e 20
mul.i.v
add.v.i
call.i instance_create(argc=3)
pop.v.v self.g
pushi.e 1098
conv.i.v
pushi.e 180
conv.i.v
pushi.e 440
push.v self.i
pushi.e 20
mul.i.v
add.v.i
call.i instance_create(argc=3)
pop.v.v self.g
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [5]

:[7]
push.d 0.25
pop.v.d 1098.image_speed
pushi.e 1692
pop.v.i 1098.sprite_index

:[end]