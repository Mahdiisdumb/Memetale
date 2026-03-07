.localvar 0 arguments

:[0]
pushbltn.v self.room
pushi.e 195
cmp.i.v NEQ
bf [3]

:[1]
push.v self.active
pushi.e 2
cmp.i.v NEQ
bf [3]

:[2]
pushi.e 1
pop.v.i self.active

:[3]
pushi.e 0
pop.v.i global.border
pushi.e 0
pushi.e -5
pushi.e 15
pop.v.i [array]global.flag
pushi.e 0
pushi.e -5
pushi.e 16
pop.v.i [array]global.flag
pushbltn.v self.room
pushi.e 192
cmp.i.v EQ
bt [5]

:[4]
pushbltn.v self.room
pushi.e 195
cmp.i.v EQ
b [6]

:[5]
push.e 1

:[6]
bf [end]

:[7]
pushi.e 1
pushi.e -5
pushi.e 15
pop.v.i [array]global.flag

:[end]