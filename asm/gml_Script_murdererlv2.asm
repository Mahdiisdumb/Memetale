.localvar 0 arguments

:[0]
pushi.e -5
pushi.e 202
push.v [array]global.flag
pushi.e 20
cmp.i.v GTE
bf [2]

:[1]
pushi.e -5
pushi.e 45
push.v [array]global.flag
pushi.e 4
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [6]

:[4]
pushi.e 1
conv.i.v
ret.v

:[5]
b [end]

:[6]
pushi.e 0
conv.i.v
ret.v

:[end]