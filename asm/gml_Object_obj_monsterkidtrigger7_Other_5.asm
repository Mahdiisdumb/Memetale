.localvar 0 arguments

:[0]
pushi.e -5
pushi.e 17
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
pushi.e 0
pushi.e -5
pushi.e 17
pop.v.i [array]global.flag

:[end]