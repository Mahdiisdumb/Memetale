.localvar 0 arguments

:[0]
push.v 518.damageturn
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushglb.v global.hp
pushi.e 60
cmp.i.v GTE
bf [3]

:[2]
push.v global.km
pushi.e 1
add.i.v
pop.v.v global.km

:[3]
pushi.e 518
pushenv [5]

:[4]
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v

:[5]
popenv [4]
pushglb.v global.hp
pushi.e 1
cmp.i.v LT
bf [end]

:[6]
pushi.e 1
pop.v.i global.hp

:[end]