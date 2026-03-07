.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.buffer
pushi.e 0
pop.v.i self.ammo
pushi.e 0
pop.v.i self.moved
pushi.e 120
pop.v.i self.gridl
pushi.e 180
pop.v.i self.gridr
pushi.e 60
pop.v.i self.gridu
pushi.e 120
pop.v.i self.gridd
pushi.e 0
pop.v.i self.active
pushi.e 0
pop.v.i self.myinteract
pushi.e 0
pop.v.i self.snd
pushi.e 0
pop.v.i self.win
pushi.e 0
pop.v.i self.wincon
pushi.e 0
pop.v.i self.wintimer
pushi.e 0
pop.v.i self.idealammo
pushi.e 0
pop.v.i self.restart
pushi.e 0
pop.v.i self.rstype
pushbltn.v self.room
pushi.e 152
cmp.i.v EQ
bf [2]

:[1]
pushi.e -5
pushi.e 375
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 1
pop.v.i self.win

:[5]
pushbltn.v self.room
pushi.e 150
cmp.i.v EQ
bf [7]

:[6]
pushi.e -5
pushi.e 374
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
pushi.e 1
pop.v.i self.win

:[10]
pushbltn.v self.room
pushi.e 173
cmp.i.v EQ
bf [12]

:[11]
pushi.e -5
pushi.e 399
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
b [13]

:[12]
push.e 0

:[13]
bf [15]

:[14]
pushi.e 1
pop.v.i self.win

:[15]
pushbltn.v self.room
pushi.e 175
cmp.i.v EQ
bf [17]

:[16]
pushi.e -5
pushi.e 400
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
b [18]

:[17]
push.e 0

:[18]
bf [20]

:[19]
pushi.e 1
pop.v.i self.win

:[20]
pushbltn.v self.room
pushi.e 205
cmp.i.v EQ
bf [22]

:[21]
pushi.e -5
pushi.e 418
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
b [23]

:[22]
push.e 0

:[23]
bf [25]

:[24]
pushi.e 1
pop.v.i self.win

:[25]
pushbltn.v self.room
pushi.e 173
cmp.i.v EQ
bf [27]

:[26]
pushi.e 40
pop.v.i self.gridu
pushi.e 120
pop.v.i self.gridl
pushi.e 220
pop.v.i self.gridr
pushi.e 120
pop.v.i self.gridd

:[27]
pushbltn.v self.room
pushi.e 175
cmp.i.v EQ
bf [29]

:[28]
pushi.e 20
pop.v.i self.gridu
pushi.e 120
pop.v.i self.gridl
pushi.e 220
pop.v.i self.gridr
pushi.e 120
pop.v.i self.gridd

:[29]
pushi.e 1
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm

:[end]