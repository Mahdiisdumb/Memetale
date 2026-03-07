.localvar 0 arguments

:[0]
push.v self.played
pushi.e 0
cmp.i.v GT
bf [end]

:[1]
pushglb.v global.currentsong2
call.i caster_free(argc=1)
popz.v

:[end]