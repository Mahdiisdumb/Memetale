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
push.s "music/core_ambience.ogg"@2716
conv.s.v
call.i caster_load(argc=1)
pop.v.v global.currentsong
push.d 0.9
conv.d.v
push.d 0.6
conv.d.v
pushglb.v global.currentsong
call.i caster_loop(argc=3)
popz.v

:[end]