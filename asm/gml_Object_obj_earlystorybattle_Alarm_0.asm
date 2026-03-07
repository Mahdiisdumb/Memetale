.localvar 0 arguments

:[0]
pushi.e -5
pushi.e 455
push.v [array]global.flag
pushi.e -5
pushi.e 456
push.v [array]global.flag
add.v.v
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pushi.e -5
pushi.e 450
pop.v.i [array]global.flag

:[2]
pushi.e -5
pushi.e 455
push.v [array]global.flag
pushi.e -5
pushi.e 456
push.v [array]global.flag
add.v.v
pushi.e 2
cmp.i.v EQ
bf [end]

:[3]
pushi.e 2
pushi.e -5
pushi.e 450
pop.v.i [array]global.flag

:[end]