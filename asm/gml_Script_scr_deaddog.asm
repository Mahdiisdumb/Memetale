.localvar 0 arguments

:[0]
pushi.e -5
pushi.e 52
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [3]

:[1]
pushi.e -5
pushi.e 53
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
pushi.e -5
pushi.e 54
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [7]

:[5]
pushi.e 1
conv.i.v
ret.v

:[6]
b [end]

:[7]
pushi.e 0
conv.i.v
ret.v

:[end]