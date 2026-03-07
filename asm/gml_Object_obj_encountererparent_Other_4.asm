.localvar 0 arguments

:[0]
pushi.e -5
pushi.e 8
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bt [2]

:[1]
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
b [3]

:[2]
push.e 1

:[3]
bf [end]

:[4]
call.i instance_destroy(argc=0)
popz.v

:[end]