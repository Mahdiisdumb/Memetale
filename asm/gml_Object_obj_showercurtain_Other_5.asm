.localvar 0 arguments

:[0]
push.v self.mode
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.dist
call.i caster_free(argc=1)
popz.v

:[2]
pushglb.v global.currentsong
call.i caster_resume(argc=1)
popz.v

:[end]