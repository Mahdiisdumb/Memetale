.localvar 0 arguments

:[0]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e -5
pushi.e 45
push.v [array]global.flag
pushi.e 4
cmp.i.v NEQ
bf [4]

:[1]
pushglb.v global.currentsong
call.i caster_is_playing(argc=1)
pushi.e 1
cmp.i.v NEQ
bf [3]

:[2]
push.s "music/house1.ogg"@2622
conv.s.v
call.i caster_load(argc=1)
pop.v.v global.currentsong
push.s "music/house2.ogg"@2629
conv.s.v
call.i caster_load(argc=1)
pop.v.v global.currentsong2
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushglb.v global.currentsong
call.i caster_loop(argc=3)
popz.v
pushi.e 1
conv.i.v
push.d 0.01
conv.d.v
pushglb.v global.currentsong2
call.i caster_loop(argc=3)
popz.v

:[3]
b [end]

:[4]
pushglb.v global.currentsong
call.i caster_is_playing(argc=1)
pushi.e 1
cmp.i.v NEQ
bf [end]

:[5]
push.s "music/toriel.ogg"@2613
conv.s.v
call.i caster_load(argc=1)
pop.v.v global.currentsong
push.s "music/toriel.ogg"@2613
conv.s.v
call.i caster_load(argc=1)
pop.v.v global.currentsong2
push.d 0.4
conv.d.v
pushi.e 1
conv.i.v
pushglb.v global.currentsong
call.i caster_loop(argc=3)
popz.v
push.d 0.4
conv.d.v
push.d 0.01
conv.d.v
pushglb.v global.currentsong2
call.i caster_loop(argc=3)
popz.v

:[end]