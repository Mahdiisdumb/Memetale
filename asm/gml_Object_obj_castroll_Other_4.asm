.localvar 0 arguments

:[0]
pushglb.v global.cast_type
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.endsong
call.i caster_play(argc=3)
popz.v

:[end]