.localvar 0 arguments

:[0]
push.v self.boxactive
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
push.v self.musicbox
call.i caster_free(argc=1)
popz.v

:[end]