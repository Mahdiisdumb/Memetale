.localvar 0 arguments

:[0]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 0
pop.v.i self.played
pushglb.v global.currentsong
call.i caster_is_playing(argc=1)
pushi.e 1
cmp.i.v NEQ
bf [end]

:[1]
push.s "music/mystery.ogg"@2836
conv.s.v
call.i caster_load(argc=1)
pop.v.v global.currentsong
push.d 0.95
conv.d.v
push.d 0.8
conv.d.v
pushglb.v global.currentsong
call.i caster_loop(argc=3)
popz.v

:[end]