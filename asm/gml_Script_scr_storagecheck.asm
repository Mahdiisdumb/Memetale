.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.haveit2
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 11
cmp.i.v LT
bf [5]

:[2]
pushi.e -5
pushi.e 300
push.v self.i
add.v.i
conv.v.i
push.v [array]global.flag
pushbltn.v self.argument0
cmp.v.v EQ
bf [4]

:[3]
pushi.e 1
pop.v.i self.haveit2

:[4]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[5]
pushi.e 0
pop.v.i self.i

:[6]
push.v self.i
pushi.e 11
cmp.i.v LT
bf [end]

:[7]
pushi.e -5
pushi.e 312
push.v self.i
add.v.i
conv.v.i
push.v [array]global.flag
pushbltn.v self.argument0
cmp.v.v EQ
bf [9]

:[8]
pushi.e 1
pop.v.i self.haveit2

:[9]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [6]

:[end]