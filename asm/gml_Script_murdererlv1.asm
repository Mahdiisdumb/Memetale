.localvar 0 arguments

:[0]
pushi.e -5
pushi.e 202
push.v [array]global.flag
pushi.e 20
cmp.i.v GTE
bf [3]

:[1]
pushi.e 1
conv.i.v
ret.v

:[2]
b [end]

:[3]
pushi.e 0
conv.i.v
ret.v

:[end]