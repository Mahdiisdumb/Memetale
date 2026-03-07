.localvar 0 arguments

:[0]
pushglb.v global.entrance
pushi.e 2
cmp.i.v EQ
bf [end]

:[1]
push.v self.usong
call.i caster_free(argc=1)
popz.v
push.v self.ushock
call.i caster_free(argc=1)
popz.v

:[end]