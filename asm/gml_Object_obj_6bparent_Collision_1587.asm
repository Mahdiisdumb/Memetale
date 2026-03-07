.localvar 0 arguments

:[0]
pushglb.v global.my_inv
pushi.e 0
cmp.i.v LT
bf [end]

:[1]
pushi.e 20
pop.v.i global.my_inv
pushi.e 0
pop.v.i self.hitted
pushi.e 157
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 1588
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushglb.v global.my_hp
pushi.e 40
cmp.i.v GT
bf [3]

:[2]
push.v self.hitted
pushi.e 0
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
push.v global.my_hp
pushi.e 6
sub.i.v
pop.v.v global.my_hp
pushi.e 1
pop.v.i self.hitted

:[6]
pushglb.v global.my_hp
pushi.e 30
cmp.i.v GT
bf [8]

:[7]
push.v self.hitted
pushi.e 0
cmp.i.v EQ
b [9]

:[8]
push.e 0

:[9]
bf [11]

:[10]
push.v global.my_hp
pushi.e 4
sub.i.v
pop.v.v global.my_hp
pushi.e 1
pop.v.i self.hitted

:[11]
pushglb.v global.my_hp
pushi.e 20
cmp.i.v GT
bf [13]

:[12]
push.v self.hitted
pushi.e 0
cmp.i.v EQ
b [14]

:[13]
push.e 0

:[14]
bf [16]

:[15]
push.v global.my_hp
pushi.e 3
sub.i.v
pop.v.v global.my_hp
pushi.e 1
pop.v.i self.hitted

:[16]
pushglb.v global.my_hp
pushi.e 12
cmp.i.v GT
bf [18]

:[17]
push.v self.hitted
pushi.e 0
cmp.i.v EQ
b [19]

:[18]
push.e 0

:[19]
bf [21]

:[20]
push.v global.my_hp
pushi.e 2
sub.i.v
pop.v.v global.my_hp
pushi.e 1
pop.v.i self.hitted

:[21]
pushglb.v global.my_hp
pushi.e 5
cmp.i.v GT
bf [23]

:[22]
push.v self.hitted
pushi.e 0
cmp.i.v EQ
b [24]

:[23]
push.e 0

:[24]
bf [26]

:[25]
push.v global.my_hp
pushi.e 1
sub.i.v
pop.v.v global.my_hp
pushi.e 1
pop.v.i self.hitted

:[26]
pushglb.v global.my_hp
pushi.e 0
cmp.i.v GT
bf [28]

:[27]
push.v self.hitted
pushi.e 0
cmp.i.v EQ
b [29]

:[28]
push.e 0

:[29]
bf [31]

:[30]
push.v global.my_hp
pushi.e 1
sub.i.v
pop.v.v global.my_hp
pushi.e 1
pop.v.i self.hitted

:[31]
pushglb.v global.my_hp
pushi.e 1
cmp.i.v LTE
bf [end]

:[32]
pushi.e 1
pop.v.i global.my_hp

:[end]