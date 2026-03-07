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
bf [5]

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
pushi.e 5
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[3]
pushglb.v global.plot
pushi.e 35
cmp.i.v GT
bf [5]

:[4]
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

:[5]
pushglb.v global.plot
pushi.e 35
cmp.i.v LTE
bf [end]

:[6]
pushi.e 5
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
push.s "music/tone3.ogg"@2640
conv.s.v
call.i caster_load(argc=1)
pop.v.v global.currentsong2

:[end]