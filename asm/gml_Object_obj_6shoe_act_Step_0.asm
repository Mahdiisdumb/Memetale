.localvar 0 arguments

:[0]
pushi.e -4
pop.v.i self.hspeed
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.counter
pushi.e 0
cmp.i.v GT
bf [2]

:[1]
push.v self.counter
pushi.e 14
cmp.i.v LT
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e -6
pop.v.i self.vspeed

:[5]
push.v self.counter
pushi.e 14
cmp.i.v EQ
bf [7]

:[6]
pushi.e 0
pop.v.i self.vspeed

:[7]
push.v self.counter
pushi.e 20
cmp.i.v GT
bf [9]

:[8]
push.v self.counter
pushi.e 30
cmp.i.v LT
b [10]

:[9]
push.e 0

:[10]
bf [12]

:[11]
pushi.e 8
pop.v.i self.vspeed

:[12]
push.v self.counter
pushi.e 30
cmp.i.v EQ
bf [14]

:[13]
pushi.e 0
pop.v.i self.vspeed

:[14]
push.v self.counter
pushi.e 40
cmp.i.v GT
bf [16]

:[15]
pushi.e 1
pop.v.i self.counter

:[16]
push.v self.counter
pushi.e 1
add.i.v
pop.v.v self.counter
push.v self.x
pushi.e 0
cmp.i.v LT
bf [18]

:[17]
push.v self.hspeed
pushi.e 0
cmp.i.v LT
b [19]

:[18]
push.e 0

:[19]
bf [21]

:[20]
push.v self.hspeed
neg.v
pop.v.v self.hspeed

:[21]
push.v self.x
pushbltn.v self.room_width
cmp.v.v GT
bf [23]

:[22]
push.v self.hspeed
pushi.e 0
cmp.i.v GT
b [24]

:[23]
push.e 0

:[24]
bf [end]

:[25]
push.v self.hspeed
neg.v
pop.v.v self.hspeed

:[end]