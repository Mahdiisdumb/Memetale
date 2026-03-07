.localvar 0 arguments

:[0]
pushglb.v global.debug
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
pushi.e 8
pop.v.i self.megadamage
pushi.e 7
conv.i.v
call.i event_user(argc=1)
popz.v

:[end]