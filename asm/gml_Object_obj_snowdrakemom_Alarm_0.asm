.localvar 0 arguments

:[0]
push.d 0.3
push.d 0.4
conv.d.v
call.i random(argc=1)
add.v.d
pop.v.v self.pitch
pushglb.v global.batmusic
call.i caster_is_playing(argc=1)
conv.v.b
bf [2]

:[1]
push.v self.pitch
pushglb.v global.batmusic
call.i caster_set_pitch(argc=2)
popz.v

:[2]
pushi.e 4
pushi.e 120
conv.i.v
call.i random(argc=1)
add.v.i
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[end]