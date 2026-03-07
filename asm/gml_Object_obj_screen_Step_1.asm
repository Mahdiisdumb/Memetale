.localvar 0 arguments

:[0]
pushglb.v global.inbattle
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e -5
pushi.e 18
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
pushi.e 107
conv.i.v
call.i script_execute(argc=1)
popz.v

:[end]