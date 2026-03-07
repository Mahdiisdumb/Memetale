.localvar 0 arguments

:[0]
pushbltn.v self.room
pushi.e 214
cmp.i.v EQ
bf [2]

:[1]
pushi.e 0
pushi.e -5
pushi.e 398
pop.v.i [array]global.flag

:[2]
pushbltn.v self.room
pushi.e 156
cmp.i.v EQ
bf [4]

:[3]
pushi.e 1
pushi.e -5
pushi.e 398
pop.v.i [array]global.flag

:[4]
pushbltn.v self.room
pushi.e 157
cmp.i.v EQ
bf [6]

:[5]
pushi.e 2
pushi.e -5
pushi.e 398
pop.v.i [array]global.flag

:[6]
pushbltn.v self.room
pushi.e 168
cmp.i.v EQ
bf [8]

:[7]
pushi.e 3
pushi.e -5
pushi.e 398
pop.v.i [array]global.flag

:[8]
pushbltn.v self.room
pushi.e 169
cmp.i.v EQ
bf [10]

:[9]
pushi.e 4
pushi.e -5
pushi.e 398
pop.v.i [array]global.flag

:[10]
pushbltn.v self.room
pushi.e 187
cmp.i.v EQ
bf [end]

:[11]
pushi.e 5
pushi.e -5
pushi.e 398
pop.v.i [array]global.flag

:[end]