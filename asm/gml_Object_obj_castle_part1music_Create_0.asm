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
bf [2]

:[1]
pushi.e -5
pushi.e 493
push.v [array]global.flag
pushi.e 12
cmp.i.v LT
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
call.i scr_murderlv(argc=0)
pushi.e 16
cmp.i.v LT
bf [6]

:[5]
push.s "music/endarea_parta.ogg"@2875
conv.s.v
call.i caster_load(argc=1)
pop.v.v global.currentsong
push.d 0.85
conv.d.v
pushi.e 1
conv.i.v
pushglb.v global.currentsong
call.i caster_loop(argc=3)
popz.v
b [end]

:[6]
pushi.e -5
pushi.e 450
push.v [array]global.flag
pushi.e 17
cmp.i.v LT
bf [8]

:[7]
push.s "music/smallshock.ogg"@2871
conv.s.v
call.i caster_load(argc=1)
pop.v.v global.currentsong
push.d 0.6
conv.d.v
pushi.e 1
conv.i.v
pushglb.v global.currentsong
call.i caster_loop(argc=3)
popz.v
b [end]

:[8]
push.s "music/prebattle1.ogg"@2615
conv.s.v
call.i caster_load(argc=1)
pop.v.v global.currentsong
push.d 0.2
conv.d.v
pushi.e 1
conv.i.v
pushglb.v global.currentsong
call.i caster_loop(argc=3)
popz.v

:[end]