.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.anim
pushi.e 0
pop.v.i self.type
pushbltn.v self.room
pushi.e 253
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i self.type

:[2]
pushbltn.v self.room
pushi.e 259
cmp.i.v EQ
bf [4]

:[3]
pushi.e 2
pop.v.i self.type

:[4]
pushbltn.v self.room
pushi.e 257
cmp.i.v EQ
bf [6]

:[5]
pushi.e 3
pop.v.i self.type

:[6]
pushi.e 0
pop.v.i self.red
pushi.e 0
pop.v.i self.yel
pushi.e 0
pop.v.i self.gre
pushi.e 0
pop.v.i self.blu
pushi.e 0
pop.v.i self.myinteract
pushi.e -5
pushi.e 481
push.v [array]global.flag
pushi.e 3
cmp.i.v EQ
bf [8]

:[7]
pushi.e 1
pop.v.i self.red

:[8]
pushi.e -5
pushi.e 482
push.v [array]global.flag
pushi.e 3
cmp.i.v EQ
bf [10]

:[9]
pushi.e 1
pop.v.i self.blu

:[10]
pushi.e -5
pushi.e 483
push.v [array]global.flag
pushi.e 3
cmp.i.v EQ
bf [12]

:[11]
pushi.e 1
pop.v.i self.gre

:[12]
pushi.e -5
pushi.e 484
push.v [array]global.flag
pushi.e 3
cmp.i.v EQ
bf [end]

:[13]
pushi.e 1
pop.v.i self.yel

:[end]