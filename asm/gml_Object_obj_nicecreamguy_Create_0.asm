.localvar 0 arguments

:[0]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_depth(argc=5)
popz.v
pushi.e 0
pop.v.i self.myinteract
pushi.e 1
pop.v.i self.image_xscale
pushi.e 1
pop.v.i self.image_yscale
pushi.e -5
pushi.e 60
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [2]

:[1]
pushbltn.v self.room
pushi.e 53
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 1378
pop.v.i self.sprite_index

:[5]
pushi.e -5
pushi.e 79
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [7]

:[6]
pushbltn.v self.room
pushi.e 96
cmp.i.v EQ
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
pushi.e 1378
pop.v.i self.sprite_index

:[10]
pushglb.v global.plot
pushi.e 101
cmp.i.v GTE
bf [12]

:[11]
pushbltn.v self.room
pushi.e 53
cmp.i.v EQ
b [13]

:[12]
push.e 0

:[13]
bf [15]

:[14]
call.i instance_destroy(argc=0)
popz.v

:[15]
pushglb.v global.plot
pushi.e 121
cmp.i.v GTE
bf [17]

:[16]
pushbltn.v self.room
pushi.e 96
cmp.i.v EQ
b [18]

:[17]
push.e 0

:[18]
bf [20]

:[19]
call.i instance_destroy(argc=0)
popz.v

:[20]
pushbltn.v self.room
pushi.e 181
cmp.i.v EQ
bf [23]

:[21]
pushi.e -5
pushi.e 402
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [23]

:[22]
pushi.e 1378
pop.v.i self.sprite_index

:[23]
pushi.e 0
pop.v.i self.conversation
pushi.e 0
pop.v.i self.j
pushi.e 0
pop.v.i self.mouth
pushi.e 0
pop.v.i self.murder
call.i scr_murderlv(argc=0)
pushi.e 3
cmp.i.v GTE
bf [25]

:[24]
pushi.e 1
pop.v.i self.murder

:[25]
pushi.e -5
pushi.e 27
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [27]

:[26]
pushi.e 0
pop.v.i self.murder

:[27]
pushi.e -5
pushi.e 203
push.v [array]global.flag
pushi.e 16
cmp.i.v GTE
bf [29]

:[28]
pushi.e 1
pop.v.i self.murder

:[29]
push.v self.murder
pushi.e 1
cmp.i.v EQ
bf [end]

:[30]
call.i instance_destroy(argc=0)
popz.v

:[end]