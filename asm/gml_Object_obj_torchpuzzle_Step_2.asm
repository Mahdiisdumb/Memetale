.localvar 0 arguments

:[0]
push.v self.h
pushi.e 3
cmp.i.v GTE
bf [2]

:[1]
push.v self.solved
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [14]

:[4]
pushbltn.v self.room
pushi.e 91
cmp.i.v EQ
bf [8]

:[5]
pushi.e 14
pushenv [7]

:[6]
call.i instance_destroy(argc=0)
popz.v

:[7]
popenv [6]

:[8]
pushi.e 1
pop.v.i self.solved
pushglb.v global.plot
pushi.e 109
cmp.i.v LT
bf [10]

:[9]
pushi.e 109
pop.v.i global.plot

:[10]
pushi.e 0
pop.v.i self.i

:[11]
push.v self.i
pushi.e 12
cmp.i.v LT
bf [13]

:[12]
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
b [11]

:[13]
push.d 0.25
pop.v.d 1098.image_speed
pushi.e 1692
pop.v.i 1098.sprite_index

:[14]
pushi.e 0
pop.v.i self.h

:[end]