.localvar 0 arguments

:[0]
push.v self.dt
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 0
pop.v.i self.dt
pushi.e -5
pushi.e 253
dup.i 1
push.v [array]global.flag
pushi.e 1
add.i.v
pop.i.v [array]global.flag

:[5]
pushi.e -5
pushi.e 253
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
pushi.e 1386
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_index

:[7]
pushi.e -5
pushi.e 253
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [9]

:[8]
pushi.e 1386
pop.v.i self.sprite_index
pushi.e 1
pop.v.i self.image_index

:[9]
pushi.e -5
pushi.e 253
push.v [array]global.flag
pushi.e 3
cmp.i.v GTE
bf [end]

:[10]
pushi.e 1386
pop.v.i self.sprite_index
pushi.e 2
pop.v.i self.image_index

:[end]