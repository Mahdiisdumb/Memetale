.localvar 0 arguments

:[0]
push.v self.excited
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e -1
pushi.e 0
push.v [array]self.alarm
pushi.e 1
cmp.i.v GT
b [3]

:[2]
push.e 0

:[3]
bf [19]

:[4]
push.d 0.1
pop.v.d self.image_speed
pushi.e 238
pop.v.i self.sprite_index
pushi.e 248
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [18]

:[5]
push.v 248.mercymod
pushi.e 200
cmp.i.v EQ
bt [10]

:[6]
push.v 248.mercymod
pushi.e 201
cmp.i.v EQ
bf [8]

:[7]
push.v self.specialx
pushi.e 0
cmp.i.v EQ
b [9]

:[8]
push.e 0

:[9]
b [11]

:[10]
push.e 1

:[11]
bf [13]

:[12]
pushi.e 4
pushi.e -1
pushi.e 3
pop.v.i [array]self.alarm
pushi.e 1
pop.v.i self.specialx

:[13]
push.v 248.mercymod
pushi.e 998
cmp.i.v GT
bf [15]

:[14]
push.v self.specialx
pushi.e 0
cmp.i.v EQ
b [16]

:[15]
push.e 0

:[16]
bf [18]

:[17]
pushi.e 4
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm
pushi.e 1
pop.v.i self.specialx

:[18]
b [20]

:[19]
push.d 0.33335
pop.v.d self.image_speed
pushi.e 237
pop.v.i self.sprite_index

:[20]
push.v self.excited
pushi.e 3
cmp.i.v EQ
bf [end]

:[21]
pushi.e 1
pop.v.i self.excited

:[end]