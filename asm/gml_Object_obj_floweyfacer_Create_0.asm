.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i global.faceemotion
pushi.e 2
pop.v.i global.facing
pushi.e 0
pop.v.i self.type
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
push.s "music/f_noise.ogg"@2743
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.ns
pushi.e 0
pop.v.i self.moved
pushi.e 0
pop.v.i self.helltimer
pushi.e 0
pop.v.i self.set

:[end]