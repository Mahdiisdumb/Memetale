.localvar 0 arguments

:[0]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v
pushglb.v global.currentsong
call.i caster_is_playing(argc=1)
pushi.e 1
cmp.i.v NEQ
bf [end]

:[1]
pushi.e -5
pushi.e 221
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
push.s "music/ruins.ogg"@2630
conv.s.v
call.i caster_load(argc=1)
pop.v.v global.currentsong
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushglb.v global.currentsong
call.i caster_loop(argc=3)
popz.v
b [end]

:[3]
push.s "music/toomuch.ogg"@2728
conv.s.v
call.i caster_load(argc=1)
pop.v.v global.currentsong
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushglb.v global.currentsong
call.i caster_loop(argc=3)
popz.v

:[end]