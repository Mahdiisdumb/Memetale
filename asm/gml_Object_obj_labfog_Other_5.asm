.localvar 0 arguments

:[0]
push.v self.fansfx
call.i caster_free(argc=1)
popz.v
pushbltn.v self.room
pushi.e 260
cmp.i.v EQ
bf [end]

:[1]
pushglb.v global.currentsong
call.i caster_resume(argc=1)
popz.v

:[end]