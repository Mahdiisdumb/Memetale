.localvar 0 arguments

:[0]
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
push.v self.birdsong
call.i caster_free(argc=1)
popz.v

:[end]