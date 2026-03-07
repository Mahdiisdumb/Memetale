.localvar 0 arguments

:[0]
pushglb.v global.entrance
pushi.e 1
cmp.i.v EQ
bt [2]

:[1]
pushglb.v global.entrance
pushi.e 2
cmp.i.v EQ
b [3]

:[2]
push.e 1

:[3]
bf [end]

:[4]
pushi.e 0
pushi.e -5
pushi.e 17
pop.v.i [array]global.flag

:[end]