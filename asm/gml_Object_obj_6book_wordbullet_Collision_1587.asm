.localvar 0 arguments

:[0]
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
call.i event_inherited(argc=0)
popz.v

:[2]
push.v self.type
pushi.e 5
cmp.i.v EQ
bf [end]

:[3]
pushi.e 156
conv.i.v
call.i snd_stop(argc=1)
popz.v
pushi.e 156
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 0
pop.v.i self.held
push.v self.held
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
pushglb.v global.my_hp
pushi.e 10
cmp.i.v LTE
b [6]

:[5]
push.e 0

:[6]
bf [8]

:[7]
push.v global.my_hp
pushi.e 10
add.i.v
pop.v.v global.my_hp
pushi.e 1
pop.v.i self.held

:[8]
push.v self.held
pushi.e 0
cmp.i.v EQ
bf [10]

:[9]
pushglb.v global.my_hp
pushi.e 20
cmp.i.v LTE
b [11]

:[10]
push.e 0

:[11]
bf [13]

:[12]
push.v global.my_hp
pushi.e 6
add.i.v
pop.v.v global.my_hp
pushi.e 1
pop.v.i self.held

:[13]
push.v self.held
pushi.e 0
cmp.i.v EQ
bf [15]

:[14]
pushglb.v global.my_hp
pushi.e 30
cmp.i.v LTE
b [16]

:[15]
push.e 0

:[16]
bf [18]

:[17]
push.v global.my_hp
pushi.e 4
add.i.v
pop.v.v global.my_hp
pushi.e 1
pop.v.i self.held

:[18]
push.v self.held
pushi.e 0
cmp.i.v EQ
bf [20]

:[19]
pushglb.v global.my_hp
pushi.e 40
cmp.i.v LTE
b [21]

:[20]
push.e 0

:[21]
bf [23]

:[22]
push.v global.my_hp
pushi.e 2
add.i.v
pop.v.v global.my_hp
pushi.e 1
pop.v.i self.held

:[23]
push.v self.held
pushi.e 0
cmp.i.v EQ
bf [25]

:[24]
pushglb.v global.my_hp
pushi.e 50
cmp.i.v LTE
b [26]

:[25]
push.e 0

:[26]
bf [28]

:[27]
push.v global.my_hp
pushi.e 1
add.i.v
pop.v.v global.my_hp
pushi.e 1
pop.v.i self.held

:[28]
call.i instance_destroy(argc=0)
popz.v

:[end]