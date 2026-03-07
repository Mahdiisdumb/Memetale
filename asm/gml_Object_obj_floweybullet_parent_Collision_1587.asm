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
pushglb.v global.battlephase
pushi.e 6
cmp.i.v LT
bf [13]

:[2]
pushglb.v global.my_hp
pushi.e 40
cmp.i.v GT
bf [4]

:[3]
push.v self.hitted
pushi.e 0
cmp.i.v EQ
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
push.v global.my_hp
pushi.e 12
sub.i.v
pop.v.v global.my_hp
pushi.e 1
pop.v.i self.hitted

:[7]
pushglb.v global.my_hp
pushi.e 30
cmp.i.v GT
bf [9]

:[8]
push.v self.hitted
pushi.e 0
cmp.i.v EQ
b [10]

:[9]
push.e 0

:[10]
bf [12]

:[11]
push.v global.my_hp
pushi.e 10
sub.i.v
pop.v.v global.my_hp
pushi.e 1
pop.v.i self.hitted

:[12]
b [23]

:[13]
pushglb.v global.my_hp
pushi.e 40
cmp.i.v GT
bf [15]

:[14]
push.v self.hitted
pushi.e 0
cmp.i.v EQ
b [16]

:[15]
push.e 0

:[16]
bf [18]

:[17]
push.v global.my_hp
pushi.e 8
sub.i.v
pop.v.v global.my_hp
pushi.e 1
pop.v.i self.hitted

:[18]
pushglb.v global.my_hp
pushi.e 30
cmp.i.v GT
bf [20]

:[19]
push.v self.hitted
pushi.e 0
cmp.i.v EQ
b [21]

:[20]
push.e 0

:[21]
bf [23]

:[22]
push.v global.my_hp
pushi.e 7
sub.i.v
pop.v.v global.my_hp
pushi.e 1
pop.v.i self.hitted

:[23]
pushglb.v global.my_hp
pushi.e 20
cmp.i.v GT
bf [25]

:[24]
push.v self.hitted
pushi.e 0
cmp.i.v EQ
b [26]

:[25]
push.e 0

:[26]
bf [28]

:[27]
push.v global.my_hp
pushi.e 6
sub.i.v
pop.v.v global.my_hp
pushi.e 1
pop.v.i self.hitted

:[28]
pushglb.v global.my_hp
pushi.e 12
cmp.i.v GT
bf [30]

:[29]
push.v self.hitted
pushi.e 0
cmp.i.v EQ
b [31]

:[30]
push.e 0

:[31]
bf [33]

:[32]
push.v global.my_hp
pushi.e 4
sub.i.v
pop.v.v global.my_hp
pushi.e 1
pop.v.i self.hitted

:[33]
pushglb.v global.my_hp
pushi.e 5
cmp.i.v GT
bf [35]

:[34]
push.v self.hitted
pushi.e 0
cmp.i.v EQ
b [36]

:[35]
push.e 0

:[36]
bf [38]

:[37]
push.v global.my_hp
pushi.e 2
sub.i.v
pop.v.v global.my_hp
pushi.e 1
pop.v.i self.hitted

:[38]
pushglb.v global.my_hp
pushi.e 0
cmp.i.v GT
bf [40]

:[39]
push.v self.hitted
pushi.e 0
cmp.i.v EQ
b [41]

:[40]
push.e 0

:[41]
bf [end]

:[42]
push.v global.my_hp
pushi.e 1
sub.i.v
pop.v.v global.my_hp
pushi.e 1
pop.v.i self.hitted

:[end]