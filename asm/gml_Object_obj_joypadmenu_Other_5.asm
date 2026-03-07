.localvar 0 arguments

:[0]
push.v self.fun
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
push.v self.harp
pushi.e 0
cmp.i.v NEQ
bf [3]

:[2]
push.v self.harp
call.i caster_free(argc=1)
popz.v

:[3]
push.v self.weathermusic
pushi.e 0
cmp.i.v NEQ
bf [end]

:[4]
push.v self.weathermusic
call.i caster_free(argc=1)
popz.v

:[end]