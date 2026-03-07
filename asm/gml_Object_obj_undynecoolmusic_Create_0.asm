.localvar 0 arguments

:[0]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 0
pop.v.i self.played
pushglb.v global.plot
pushi.e 121
cmp.i.v EQ
bf [end]

:[1]
pushglb.v global.currentsong
call.i caster_is_playing(argc=1)
pushi.e 1
cmp.i.v NEQ
bf [end]

:[2]
push.s "music/undynetruetheme.ogg"@2853
conv.s.v
call.i caster_load(argc=1)
pop.v.v global.currentsong
pushi.e 1
conv.i.v
push.d 0.9
conv.d.v
pushglb.v global.currentsong
call.i caster_loop(argc=3)
popz.v

:[end]