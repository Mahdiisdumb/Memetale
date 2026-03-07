.localvar 0 arguments

:[0]
push.s "music/birdnoise.ogg"@2870
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.birb
pushi.e 0
pop.v.i self.birbvol
pushi.e 0
pop.v.i self.birbcon
pushi.e 1
conv.i.v
push.v self.birbvol
push.v self.birb
call.i caster_loop(argc=3)
popz.v

:[end]