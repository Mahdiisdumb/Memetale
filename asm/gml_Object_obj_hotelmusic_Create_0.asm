.localvar 0 arguments

:[0]
pushi.e 0
pushi.e -5
pushi.e 15
pop.v.i [array]global.flag
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
pushi.e -5
pushi.e 224
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [8]

:[2]
push.s "music/hotel.ogg"@2858
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
call.i scr_murderlv(argc=0)
pushi.e 12
cmp.i.v GTE
bf [4]

:[3]
pushi.e -5
pushi.e 27
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
push.d 0.5
conv.d.v
pushglb.v global.currentsong
call.i caster_set_pitch(argc=2)
popz.v

:[7]
b [end]

:[8]
pushi.e -5
pushi.e 27
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [10]

:[9]
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

:[10]
push.s "music/hotel.ogg"@2858
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