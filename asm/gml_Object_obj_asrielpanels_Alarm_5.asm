.localvar 0 arguments

:[0]
push.s "music/xpart_a.ogg"@2777
conv.s.v
call.i caster_load(argc=1)
pop.v.v global.batmusic
push.s "music/xpart_b.ogg"@2778
conv.s.v
call.i caster_load(argc=1)
pop.v.v global.batmusic2
push.d 0.85
conv.d.v
pushi.e 1
conv.i.v
pushglb.v global.batmusic
call.i caster_play(argc=3)
popz.v
pushi.e 0
pop.v.i self.memtimer
pushi.e 0
pop.v.i self.image_alpha
pushi.e 1
pop.v.i self.on
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.rev_alpha
pushi.e 0
pop.v.i self.xtimer
pushi.e 1
pop.v.i global.inbattle
pushi.e 1
pop.v.i self.active

:[end]