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
pushglb.v global.plot
pushi.e 35
cmp.i.v LTE
bf [3]

:[2]
push.s "music/tone2.ogg"@2639
conv.s.v
call.i caster_load(argc=1)
pop.v.v global.currentsong
pushi.e 1
conv.i.v
push.d 0.2
conv.d.v
pushglb.v global.currentsong
call.i caster_loop(argc=3)
popz.v
pushi.e 153
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[3]
pushglb.v global.plot
pushi.e 35
cmp.i.v GT
bf [end]

:[4]
pushi.e -5
pushi.e 222
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [11]

:[5]
push.s "music/snowy.ogg"@2633
conv.s.v
call.i caster_load(argc=1)
pop.v.v global.currentsong
push.d 0.95
conv.d.v
pushi.e 1
conv.i.v
pushglb.v global.currentsong
call.i caster_loop(argc=3)
popz.v
call.i scr_murderlv(argc=0)
pushi.e 2
cmp.i.v GTE
bf [7]

:[6]
pushi.e -5
pushi.e 27
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
push.d 0.4
conv.d.v
pushglb.v global.currentsong
call.i caster_set_pitch(argc=2)
popz.v

:[10]
b [end]

:[11]
pushi.e -5
pushi.e 27
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [13]

:[12]
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
b [end]

:[13]
push.s "music/snowy.ogg"@2633
conv.s.v
call.i caster_load(argc=1)
pop.v.v global.currentsong
push.d 0.95
conv.d.v
pushi.e 1
conv.i.v
pushglb.v global.currentsong
call.i caster_loop(argc=3)
popz.v

:[end]