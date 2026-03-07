.localvar 0 arguments

:[0]
push.v self.faketime
pushi.e 1
sub.i.v
pop.v.v self.faketime
pushi.e 0
pop.v.i self.ok
push.v self.col
pushi.e 0
cmp.i.v LTE
bf [2]

:[1]
pushglb.v global.interact
pushi.e 1
cmp.i.v NEQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 1
pop.v.i self.ok

:[5]
push.v self.faketime
pushi.e 0
cmp.i.v GT
bf [7]

:[6]
pushglb.v global.interact
pushi.e 1
cmp.i.v NEQ
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
pushi.e 1
pop.v.i self.ok

:[10]
push.v self.ok
pushi.e 1
cmp.i.v EQ
bf [16]

:[11]
pushi.e -1
pop.v.i self.faketime
pushi.e 107
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 1
pop.v.i 1536.goldshift
pushi.e 1546
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [13]

:[12]
pushi.e 1
pop.v.i 1546.goldshift

:[13]
pushi.e 1
pop.v.i self.image_index
push.v self.on
pushi.e 0
cmp.i.v EQ
bf [15]

:[14]
pushi.e 1
pop.v.i self.on
b [16]

:[15]
pushi.e 0
pop.v.i self.on

:[16]
pushi.e 3
pop.v.i self.col

:[end]