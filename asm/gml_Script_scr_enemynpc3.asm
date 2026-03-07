.localvar 0 arguments

:[0]
pushglb.v global.plot
pushi.e 191
cmp.i.v GT
bf [15]

:[1]
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bt [3]

:[2]
pushi.e -5
pushi.e 8
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
b [4]

:[3]
push.e 1

:[4]
bf [13]

:[5]
pushi.e -5
pushi.e 205
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [7]

:[6]
pushi.e -5
pushi.e 206
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
b [8]

:[7]
push.e 0

:[8]
bf [11]

:[9]
pushi.e 1
conv.i.v
ret.v

:[10]
b [12]

:[11]
pushi.e 0
conv.i.v
ret.v

:[12]
b [14]

:[13]
pushi.e 0
conv.i.v
ret.v

:[14]
b [end]

:[15]
pushi.e 0
conv.i.v
ret.v

:[end]