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
pushi.e 0
pop.v.i self.qr
pushglb.v global.plot
pushi.e 105
cmp.i.v GT
bf [3]

:[2]
pushbltn.v self.room
pushi.e 84
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
pushi.e 1
pop.v.i self.qr

:[6]
push.v self.qr
pushi.e 0
cmp.i.v EQ
bf [8]

:[7]
push.s "music/ambientwater.ogg"@2645
conv.s.v
call.i caster_load(argc=1)
pop.v.v global.currentsong
pushi.e 1
conv.i.v
push.d 0.8
conv.d.v
pushglb.v global.currentsong
call.i caster_loop(argc=3)
popz.v
b [end]

:[8]
pushi.e -5
pushi.e 223
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [15]

:[9]
push.s "music/waterfall.ogg"@2643
conv.s.v
call.i caster_load(argc=1)
pop.v.v global.currentsong
pushi.e 1
conv.i.v
push.d 0.8
conv.d.v
pushglb.v global.currentsong
call.i caster_loop(argc=3)
popz.v
call.i scr_murderlv(argc=0)
pushi.e 8
cmp.i.v GTE
bf [11]

:[10]
pushi.e -5
pushi.e 27
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
b [12]

:[11]
push.e 0

:[12]
bf [14]

:[13]
push.d 0.13
conv.d.v
pushglb.v global.currentsong
call.i caster_set_pitch(argc=2)
popz.v

:[14]
b [end]

:[15]
pushi.e -5
pushi.e 27
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [17]

:[16]
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

:[17]
push.s "music/waterfall.ogg"@2643
conv.s.v
call.i caster_load(argc=1)
pop.v.v global.currentsong
pushi.e 1
conv.i.v
push.d 0.8
conv.d.v
pushglb.v global.currentsong
call.i caster_loop(argc=3)
popz.v

:[end]