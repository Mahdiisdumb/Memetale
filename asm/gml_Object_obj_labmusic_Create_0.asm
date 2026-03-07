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
pushbltn.v self.room
pushi.e 211
cmp.i.v EQ
bf [3]

:[2]
push.s "music/drone.ogg"@2696
conv.s.v
call.i caster_load(argc=1)
pop.v.v global.currentsong
push.d 0.5
conv.d.v
push.d 0.5
conv.d.v
pushglb.v global.currentsong
call.i caster_loop(argc=3)
popz.v
exit.i

:[3]
pushglb.v global.plot
pushi.e 125
cmp.i.v GT
bf [5]

:[4]
pushi.e -5
pushi.e 493
push.v [array]global.flag
pushi.e 11
cmp.i.v LT
b [6]

:[5]
push.e 0

:[6]
bf [11]

:[7]
call.i scr_murderlv(argc=0)
pushi.e 12
cmp.i.v LT
bf [9]

:[8]
push.s "music/lab.ogg"@2855
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
b [10]

:[9]
push.s "music/drone.ogg"@2696
conv.s.v
call.i caster_load(argc=1)
pop.v.v global.currentsong
push.d 0.5
conv.d.v
push.d 0.5
conv.d.v
pushglb.v global.currentsong
call.i caster_loop(argc=3)
popz.v

:[10]
b [end]

:[11]
push.s "music/drone.ogg"@2696
conv.s.v
call.i caster_load(argc=1)
pop.v.v global.currentsong
push.d 0.5
conv.d.v
push.d 0.5
conv.d.v
pushglb.v global.currentsong
call.i caster_loop(argc=3)
popz.v

:[end]