.localvar 0 arguments

:[0]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e -5
pushi.e 67
push.v [array]global.flag
pushi.e 1
cmp.i.v NEQ
bf [end]

:[1]
pushglb.v global.currentsong
call.i caster_is_playing(argc=1)
pushi.e 1
cmp.i.v NEQ
bf [end]

:[2]
pushbltn.v self.room
pushi.e 80
cmp.i.v NEQ
bf [4]

:[3]
push.s "music/muscle.ogg"@2637
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

:[4]
push.s "music/sansdate.ogg"@2861
conv.s.v
call.i caster_load(argc=1)
pop.v.v global.currentsong
push.d 0.8
conv.d.v
push.d 0.9
conv.d.v
pushglb.v global.currentsong
call.i caster_loop(argc=3)
popz.v

:[end]