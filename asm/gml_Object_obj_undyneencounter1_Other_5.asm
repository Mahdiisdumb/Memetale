.localvar 0 arguments

:[0]
pushglb.v global.entrance
pushi.e 2
cmp.i.v EQ
bf [2]

:[1]
push.v self.ld
pushi.e 1
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
push.v self.usong
call.i caster_free(argc=1)
popz.v
push.v self.ushock
call.i caster_free(argc=1)
popz.v

:[end]