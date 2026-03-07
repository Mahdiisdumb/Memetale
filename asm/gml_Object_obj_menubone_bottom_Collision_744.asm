.localvar 0 arguments

:[0]
push.v 518.damageturn
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushi.e 518
pushenv [3]

:[2]
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v

:[3]
popenv [2]
pushglb.v global.hp
pushi.e 1
cmp.i.v LT
bf [end]

:[4]
pushi.e 1
pop.v.i global.hp

:[end]