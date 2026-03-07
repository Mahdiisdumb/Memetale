.localvar 0 arguments

:[0]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushglb.v global.currentsong
call.i caster_free(argc=1)
popz.v
push.s "music/intronoise.ogg"@2623
conv.s.v
call.i caster_load(argc=1)
pop.v.v global.currentsong
push.d 0.3
conv.d.v
push.d 0.4
conv.d.v
pushglb.v global.currentsong
call.i caster_loop(argc=3)
popz.v

:[end]