.localvar 0 arguments

:[0]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 1
pop.v.i self.ok
pushglb.v global.currentsong
call.i caster_is_playing(argc=1)
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 0
pop.v.i self.ok

:[2]
pushi.e 1120
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [4]

:[3]
pushi.e 0
pop.v.i self.ok

:[4]
pushi.e 1298
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [6]

:[5]
pushi.e 0
pop.v.i self.ok

:[6]
push.v self.ok
pushi.e 1
cmp.i.v EQ
bf [end]

:[7]
pushi.e 0
pop.v.i self.played
pushglb.v global.currentsong
call.i caster_is_playing(argc=1)
pushi.e 1
cmp.i.v NEQ
bf [end]

:[8]
pushi.e -5
pushi.e 224
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [15]

:[9]
push.s "music/oogloop.ogg"@2694
conv.s.v
call.i caster_load(argc=1)
pop.v.v global.currentsong
push.d 0.9
conv.d.v
push.d 0.7
conv.d.v
pushglb.v global.currentsong
call.i caster_loop(argc=3)
popz.v
call.i scr_murderlv(argc=0)
pushi.e 12
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
push.d 0.5
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
push.s "music/oogloop.ogg"@2694
conv.s.v
call.i caster_load(argc=1)
pop.v.v global.currentsong
push.d 0.9
conv.d.v
push.d 0.7
conv.d.v
pushglb.v global.currentsong
call.i caster_loop(argc=3)
popz.v

:[end]