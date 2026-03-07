.localvar 0 arguments

:[0]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1576
conv.i.v
push.v self.bbox_bottom
pushi.e 2
sub.i.v
push.v self.x
pushi.e 10
add.i.v
push.v self.bbox_top
pushi.e 2
sub.i.v
push.v self.x
pushi.e 10
add.i.v
call.i collision_rectangle(argc=7)
conv.v.b
bf [2]

:[1]
push.v self.touched
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [8]

:[4]
pushi.e 1
pop.v.i self.touched
push.v self.image_index
pushi.e 1
cmp.i.v EQ
bf [6]

:[5]
pushi.e 142
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 2
pop.v.i self.image_index
pushi.e 0
pop.v.i 978.fvic

:[6]
push.v self.image_index
pushi.e 0
cmp.i.v EQ
bf [8]

:[7]
pushi.e 1
pop.v.i self.image_index
pushi.e 142
conv.i.v
call.i snd_play(argc=1)
popz.v

:[8]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1576
conv.i.v
push.v self.bbox_bottom
pushi.e 2
sub.i.v
push.v self.x
pushi.e 10
add.i.v
push.v self.bbox_top
pushi.e 2
sub.i.v
push.v self.x
pushi.e 10
add.i.v
call.i collision_rectangle(argc=7)
pushi.e 0
cmp.i.v LT
bf [10]

:[9]
push.v self.touched
pushi.e 1
cmp.i.v EQ
b [11]

:[10]
push.e 0

:[11]
bf [13]

:[12]
pushi.e 0
pop.v.i self.touched

:[13]
pushi.e 978
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[14]
push.v self.image_index
pushi.e 1
cmp.i.v EQ
bf [end]

:[15]
push.v 978.vic
pushi.e 1
add.i.v
pop.v.v 978.vic

:[end]