.localvar 0 arguments

:[0]
call.i scr_damagestandard_x(argc=0)
popz.v
pushglb.v global.hp
pushi.e 0
cmp.i.v LTE
bf [end]

:[1]
push.v 364.x
pop.v.v 744.x
push.v 364.y
pop.v.v 744.y

:[end]