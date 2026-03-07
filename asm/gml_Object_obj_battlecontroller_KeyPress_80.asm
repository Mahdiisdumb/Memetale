.localvar 0 arguments

:[0]
pushi.e 79
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
bf [2]

:[1]
pushglb.v global.debug
pushi.e 1
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
push.i 999999
pop.v.i 607.mercymod
pushi.e 0
pop.v.i global.mercy

:[end]