.localvar 0 arguments

:[0]
pushglb.v global.plot
pushi.e 121
cmp.i.v GT
bf [2]

:[1]
pushi.e -5
pushi.e 204
push.v [array]global.flag
pushi.e 0
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