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
pushi.e 245
cmp.i.v EQ
bt [3]

:[2]
pushbltn.v self.room
pushi.e 262
cmp.i.v EQ
b [4]

:[3]
push.e 1

:[4]
bf [7]

:[5]
push.s "music/drone.ogg"@2696
conv.s.v
call.i caster_load(argc=1)
pop.v.v global.currentsong
push.d 0.5
conv.d.v
push.d 0.3
conv.d.v
pushglb.v global.currentsong
call.i caster_loop(argc=3)
popz.v
exit.i

:[6]
b [end]

:[7]
push.s "music/hereweare.ogg"@2774
conv.s.v
call.i caster_load(argc=1)
pop.v.v global.currentsong
pushi.e 1
conv.i.v
push.d 0.9
conv.d.v
pushglb.v global.currentsong
call.i caster_loop(argc=3)
popz.v

:[end]