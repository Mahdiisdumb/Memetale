.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.myinteract
pushi.e 1365
conv.i.v
push.v self.y
push.v self.x
push.v self.sprite_width
add.v.v
call.i instance_create(argc=3)
pop.v.v self.mychip
pushi.e 0
push.v self.mychip
conv.v.i
pop.v.i [stacktop]self.image_index
push.v self.depth
pushi.e 1
add.i.v
push.v self.mychip
conv.v.i
pop.v.v [stacktop]self.depth
pushi.e 1763
push.v self.mychip
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 0
push.v self.mychip
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 1
push.v self.mychip
conv.v.i
pop.v.i [stacktop]self.visible
push.d 0.2
pop.v.d self.image_speed
pushi.e -5
pushi.e 374
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushbltn.v self.room
pushi.e 148
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 1765
pop.v.i self.sprite_index

:[5]
pushi.e -5
pushi.e 399
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
pushbltn.v self.room
pushi.e 171
cmp.i.v EQ
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
pushi.e 1765
pop.v.i self.sprite_index

:[10]
pushi.e 0
pop.v.i self.did
pushglb.v global.plot
pushi.e 132
cmp.i.v GT
bf [12]

:[11]
pushbltn.v self.room
pushi.e 148
cmp.i.v EQ
b [13]

:[12]
push.e 0

:[13]
bf [15]

:[14]
pushi.e 1
pop.v.i self.did

:[15]
pushglb.v global.plot
pushi.e 163
cmp.i.v GT
bf [17]

:[16]
pushbltn.v self.room
pushi.e 171
cmp.i.v EQ
b [18]

:[17]
push.e 0

:[18]
bf [20]

:[19]
pushi.e 1
pop.v.i self.did

:[20]
push.v self.did
pushi.e 1
cmp.i.v EQ
bf [end]

:[21]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v
push.v self.x
pushi.e 20
sub.i.v
pop.v.v self.x

:[end]