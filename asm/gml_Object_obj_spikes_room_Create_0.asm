.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.yarl
pushbltn.v self.room
pushi.e 8
cmp.i.v EQ
bf [2]

:[1]
push.d 4.5
pop.v.d self.yarl

:[2]
pushbltn.v self.room
pushi.e 15
cmp.i.v EQ
bf [4]

:[3]
pushi.e 99
pop.v.i self.yarl

:[4]
pushbltn.v self.room
pushi.e 17
cmp.i.v EQ
bf [6]

:[5]
pushi.e 99
pop.v.i self.yarl

:[6]
pushbltn.v self.room
pushi.e 22
cmp.i.v EQ
bf [8]

:[7]
pushi.e 12
pop.v.i self.yarl

:[8]
pushbltn.v self.room
pushi.e 24
cmp.i.v EQ
bf [10]

:[9]
push.v self.x
pushi.e 60
cmp.i.v LT
b [11]

:[10]
push.e 0

:[11]
bf [13]

:[12]
pushi.e 13
pop.v.i self.yarl

:[13]
pushbltn.v self.room
pushi.e 25
cmp.i.v EQ
bf [15]

:[14]
push.v self.x
pushi.e 160
cmp.i.v LT
b [16]

:[15]
push.e 0

:[16]
bf [18]

:[17]
pushi.e 14
pop.v.i self.yarl

:[18]
pushbltn.v self.room
pushi.e 26
cmp.i.v EQ
bf [20]

:[19]
push.v self.x
pushi.e 320
cmp.i.v GT
b [21]

:[20]
push.e 0

:[21]
bf [23]

:[22]
pushi.e 15
pop.v.i self.yarl

:[23]
pushbltn.v self.room
pushi.e 57
cmp.i.v EQ
bf [25]

:[24]
pushi.e 48
pop.v.i self.yarl

:[25]
pushbltn.v self.room
pushi.e 58
cmp.i.v EQ
bf [27]

:[26]
pushi.e 52
pop.v.i self.yarl

:[27]
pushbltn.v self.room
pushi.e 59
cmp.i.v EQ
bf [end]

:[28]
pushi.e 55
pop.v.i self.yarl

:[end]