.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.ts
pushi.e 0
pop.v.i self.on
pushbltn.v self.room
pushi.e 174
cmp.i.v EQ
bf [3]

:[1]
pushi.e -5
pushi.e 400
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [3]

:[2]
pushi.e 1
pop.v.i self.on

:[3]
pushbltn.v self.room
pushi.e 172
cmp.i.v EQ
bf [6]

:[4]
pushi.e -5
pushi.e 399
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [6]

:[5]
pushi.e 1
pop.v.i self.on

:[6]
pushbltn.v self.room
pushi.e 149
cmp.i.v EQ
bf [9]

:[7]
pushi.e -5
pushi.e 374
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [9]

:[8]
pushi.e 1
pop.v.i self.on

:[9]
pushbltn.v self.room
pushi.e 151
cmp.i.v EQ
bf [12]

:[10]
pushi.e -5
pushi.e 375
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [12]

:[11]
pushi.e 1
pop.v.i self.on

:[12]
pushi.e 1
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[end]