.localvar 0 arguments

:[0]
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
bf [2]

:[1]
pushglb.v global.my_hp
pushi.e 10
cmp.i.v LTE
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
push.v global.my_hp
pushi.e 10
add.i.v
pop.v.v global.my_hp
pushi.e 1
pop.v.i self.held

:[5]
push.v self.held
pushi.e 0
cmp.i.v EQ
bf [7]

:[6]
pushglb.v global.my_hp
pushi.e 20
cmp.i.v LTE
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
push.v global.my_hp
pushi.e 6
add.i.v
pop.v.v global.my_hp
pushi.e 1
pop.v.i self.held

:[10]
push.v self.held
pushi.e 0
cmp.i.v EQ
bf [12]

:[11]
pushglb.v global.my_hp
pushi.e 30
cmp.i.v LTE
b [13]

:[12]
push.e 0

:[13]
bf [15]

:[14]
push.v global.my_hp
pushi.e 4
add.i.v
pop.v.v global.my_hp
pushi.e 1
pop.v.i self.held

:[15]
push.v self.held
pushi.e 0
cmp.i.v EQ
bf [17]

:[16]
pushglb.v global.my_hp
pushi.e 40
cmp.i.v LTE
b [18]

:[17]
push.e 0

:[18]
bf [20]

:[19]
push.v global.my_hp
pushi.e 2
add.i.v
pop.v.v global.my_hp
pushi.e 1
pop.v.i self.held

:[20]
push.v self.held
pushi.e 0
cmp.i.v EQ
bf [22]

:[21]
pushglb.v global.my_hp
pushi.e 50
cmp.i.v LTE
b [23]

:[22]
push.e 0

:[23]
bf [25]

:[24]
push.v global.my_hp
pushi.e 1
add.i.v
pop.v.v global.my_hp
pushi.e 1
pop.v.i self.held

:[25]
call.i instance_destroy(argc=0)
popz.v

:[end]