.localvar 0 arguments

:[0]
push.s "music/chime.ogg"@2702
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.chime
pushi.e 0
pop.v.i self.image_alpha
pushi.e 0
pop.v.i self.active
pushi.e 0
pop.v.i self.sparklefactor
push.v self.sprite_index
call.i scr_getsprite(argc=1)
pop.v.v self.sprite_index

:[end]